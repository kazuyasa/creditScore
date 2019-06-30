const CreditScore = artifacts.require("CreditScore.sol");

module.exports = function(deployer) {
    deployer.deploy(CreditScore);
};