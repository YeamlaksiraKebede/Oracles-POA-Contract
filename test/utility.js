require('chai')
  .use(require('chai-as-promised'))
  .use(require('chai-bignumber')(web3.BigNumber))
  .should();
let data = require('./data.js');
let big = require('./util/bigNum.js').big;

let { deployTestContracts } = require('./util/deploy.js');

contract('Utility [all features]', function (accounts) {
  let { utilityContract } = {};

  beforeEach(async () => {
    ({ utilityContract } = await deployTestContracts());
  });

});
