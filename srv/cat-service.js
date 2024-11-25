const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
  const externalService = await cds.connect.to('SystemConfigurationService');

  this.on('READ', ['BusinessSystems', 'SystemObjects', 'SystemTypes'], async (req) => {
    return externalService.run(req.query);
  });
});
