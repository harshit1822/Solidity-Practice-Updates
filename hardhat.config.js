/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require("@nomiclabs/hardhat-waffle");

const ALCHEMY_API_KEY = "OMFw9_sV-EdQR16Yusd3WTUwKGi0YJo1";
ROPSTEN_PRIVATE_KEY =
  "5c072151bc8897d60bb12bd0637955d1da16a63dc19d300ee8f181b3e9564dba";

module.exports = {
  solidity: "0.8.9",

  networks: {
    ropsten: {
      url: `https://eth-ropsten.alchemyapi.io/v2/${ALCHEMY_API_KEY}`,

      accounts: [`${ROPSTEN_PRIVATE_KEY}`],
    },
  },
};
