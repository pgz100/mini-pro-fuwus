const Base = require('./base.js');

module.exports = class extends Base {
  async indexAction() {
    const model = this.model('goods');
    const goodsList = await model.select();

    return this.success(goodsList);
  }

  /**
   * 商品详情页数据
   * @returns {Promise.<Promise|PreventPromise|void>}
   */
  async detailAction() {
    const goodsId = this.get('id');
    const mobile = await this.model('about_us').where({id: 1}).getField('mobile', true);
    const info = await this.model('goods').where({'id': goodsId}).find();
    // const attribute = await this.model('goods_attribute').field('nideshop_goods_attribute.value, nideshop_attribute.name').join('nideshop_attribute ON nideshop_goods_attribute.attribute_id=nideshop_attribute.id').order({'nideshop_goods_attribute.id': 'asc'}).where({'nideshop_goods_attribute.goods_id': goodsId}).select();
    const attribute = await this.model('service_provider').where({sp_id: info.sp_id}).select();
    // think.logger.info(JSON.stringify(attribute));
    return this.success({
      info: info,
      attribute: attribute,
      mobile: mobile
    });
  }

  // /**
  //  * 获取分类下的商品
  //  * @returns {Promise.<*>}
  //  */
  // async categoryAction() {
  //   const model = this.model('category');
  //   const currentCategory = await model.where({id: this.get('id')}).find();
  //   const parentCategory = await model.where({id: currentCategory.parent_id}).find();
  //   const brotherCategory = await model.where({parent_id: currentCategory.parent_id}).select();

  //   return this.success({
  //     currentCategory: currentCategory,
  //     parentCategory: parentCategory,
  //     brotherCategory: brotherCategory
  //   });
  // }

  /**
   * 获取商品列表
   * @returns {Promise.<*>}
   */
  async listAction() {
    // const categoryId = this.get('categoryId');
    const brandId = this.get('brandId');
    const keyword = this.get('keyword');
    const isNew = this.get('isNew');
    const isHot = this.get('isHot');
    const page = this.get('page');
    let size = this.get('size'); 
    if (think.isEmpty(size)) {
      size = 10; //默认每页展示的条数
    }
    const sort = this.get('sort');
    const order = this.get('order');

    const goodsQuery = this.model('goods');
    const searchHistory = this.model('search_history');

    const whereMap = {};
    if (!think.isEmpty(isNew)) {
      whereMap.is_new = isNew;
    }

    if (!think.isEmpty(isHot)) {
      whereMap.is_hot = isHot;
    }

    if (!think.isEmpty(keyword)) {
      whereMap.name = ['like', `%${keyword}%`];
      // 添加到搜索历史，不重复添加搜索历史
      await searchHistory.thenAdd({
        keyword: keyword,
        // user_id: this.getLoginUserId()
      }, {
        keyword: keyword
      })
      await searchHistory.where({keyword:keyword}).increment('count', 1); //将搜索次数加1
      // await this.model('search_history').add({
      //   keyword: keyword,
      //   user_id: this.getLoginUserId(),
      //   add_time: parseInt(new Date().getTime() / 1000)
      // });
    }

    if (!think.isEmpty(brandId)) {
      whereMap.brand_id = brandId;
    }

    // 排序
    let orderMap = {};
    if (sort === 'price') {
      // 按价格
      orderMap = {
        retail_price: order
      };
    } else {
      // 按商品添加时间
      orderMap = {
        id: 'desc'
      };
    }

    // 筛选的分类
    // let filterCategory = [{
    //   'id': 0,
    //   'name': '全部',
    //   'checked': false
    // }];

    // const categoryIds = await goodsQuery.where(whereMap).getField('category_id', 10000);
    // if (!think.isEmpty(categoryIds)) {
    //   // 查找二级分类的parent_id
    //   const parentIds = await this.model('category').where({id: {'in': categoryIds}}).getField('parent_id', 10000);
    //   // 一级分类
    //   const parentCategory = await this.model('category').field(['id', 'name']).order({'sort_order': 'asc'}).where({'id': {'in': parentIds}}).select();

    //   if (!think.isEmpty(parentCategory)) {
    //     filterCategory = filterCategory.concat(parentCategory);
    //   }
    // }

    // // 加入分类条件
    // if (!think.isEmpty(categoryId) && parseInt(categoryId) > 0) {
    //   whereMap.category_id = ['in', await this.model('category').getCategoryWhereIn(categoryId)];
    // }

    // 搜索到的商品
    const goodsData = await goodsQuery.where(whereMap).field(['id', 'name', 'list_pic_url']).order(orderMap).page(page, size).countSelect();
    // goodsData.filterCategory = filterCategory.map(function(v) {
    //   v.checked = (think.isEmpty(categoryId) && v.id === 0) || v.id === parseInt(categoryId);
    //   return v;
    // });
    goodsData.goodsList = goodsData.data;

    return this.success(goodsData);
  }

  // /**
  //  * 商品列表筛选的分类列表
  //  * @returns {Promise.<Promise|void|PreventPromise>}
  //  */
  // async filterAction() {
  //   const categoryId = this.get('categoryId');
  //   const keyword = this.get('keyword');
  //   const isNew = this.get('isNew');
  //   const isHot = this.get('isHot');

  //   const goodsQuery = this.model('goods');

  //   if (!think.isEmpty(categoryId)) {
  //     goodsQuery.where({category_id: {'in': await this.model('category').getChildCategoryId(categoryId)}});
  //   }

  //   if (!think.isEmpty(isNew)) {
  //     goodsQuery.where({is_new: isNew});
  //   }

  //   if (!think.isEmpty(isHot)) {
  //     goodsQuery.where({is_hot: isHot});
  //   }

  //   if (!think.isEmpty(keyword)) {
  //     goodsQuery.where({name: {'like': `%${keyword}%`}});
  //   }

  //   let filterCategory = [{
  //     'id': 0,
  //     'name': '全部'
  //   }];

  //   // 二级分类id
  //   const categoryIds = await goodsQuery.getField('category_id', 10000);
  //   if (!think.isEmpty(categoryIds)) {
  //     // 查找二级分类的parent_id
  //     const parentIds = await this.model('category').where({id: {'in': categoryIds}}).getField('parent_id', 10000);
  //     // 一级分类
  //     const parentCategory = await this.model('category').field(['id', 'name']).order({'sort_order': 'asc'}).where({'id': {'in': parentIds}}).select();

  //     if (!think.isEmpty(parentCategory)) {
  //       filterCategory = filterCategory.concat(parentCategory);
  //     }
  //   }

  //   return this.success(filterCategory);
  // }

  // /**
  //  * 在售的商品总数
  //  * @returns {Promise.<Promise|PreventPromise|void>}
  //  */
  // async countAction() {
  //   const goodsCount = await this.model('goods').where({is_delete: 0, is_on_sale: 1}).count('id');

  //   return this.success({
  //     goodsCount: goodsCount
  //   });
  // }
};
