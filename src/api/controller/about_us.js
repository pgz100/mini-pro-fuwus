const Base = require('./base.js');

module.exports = class extends Base {
  /**
   * 获取服务市场介绍及联系方式
   * @return {Promise} []
   */
  async detailAction() {
  	const model = this.model('about_us');
    const data = await model.where({id: 1}).find();
    return this.success(data);
  }
};
