const Base = require('./base.js');

module.exports = class extends Base {
  async listAction() {
    const model = this.model('news');
    const page = this.get('page');
    const size = 8; //每页展示的条数

    const data = await model.field(['id', 'title', 'date', 'item_pic_url']).page(page, size).countSelect();

    return this.success(data);
  }

  async detailAction() {
    const model = this.model('news');
    const data = await model.where({id: this.get('id')}).find();

    return this.success(data);
  }

  async relatedAction() {
    const model = this.model('news');
    const data = await model.field(['id', 'title', 'item_pic_url']).limit(4).select();

    return this.success(data);
  }
};
