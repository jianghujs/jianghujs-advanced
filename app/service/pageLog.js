'use strict';

const validateUtil = require('@jianghujs/jianghu/app/common/validateUtil');
const Service = require('egg').Service;
const path = require('path');
const fs = require('fs');
const { tableEnum } = require('../constant/constant');
const _ = require('lodash');
const dayjs = require('dayjs');

const actionDataScheme = Object.freeze({
  selectItemListFromLogFile: {
    type: 'object',
    additionalProperties: true,
    required: [],
    properties: {
      // table: { type: 'string' },
    },
  },
});

class PageLogService extends Service {

  async selectItemListFromLogFile() {
    const actionData = this.ctx.request.body.appData.actionData;
    validateUtil.validate(actionDataScheme.selectItemListFromLogFile, actionData);
    const { config } = this.ctx.app;
    const { baseDir, appId } = config;
    // const { xxx } = actionData;
    const targetLogFilePath = path.join(baseDir, `/logs/${appId}.page.json.log`);
    let strData = fs.readFileSync(targetLogFilePath, 'UTF-8').toString();
    strData = strData.replace(/"}\n/g, '"},');
    strData = strData.substring(0, strData.length - 1);
    const newStrData = '[' + strData  +']';
    const rows = JSON.parse(newStrData);
    const newRows = rows.map(row => {
      const { message, ...other } = row;
      const messageObj = eval("(" + message + ")");
      const newRow = { ...other, ...messageObj };
      return newRow;
    });
    return { rows: newRows};
  }

}
module.exports = PageLogService;
