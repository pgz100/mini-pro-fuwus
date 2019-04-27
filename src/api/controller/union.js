const Base = require('./base.js');

module.exports = class extends Base {

  async detailAction() {
    const model = this.model('union');
    const data = await model.where({id: 1}).find();

    return this.success(data);
  }

};
