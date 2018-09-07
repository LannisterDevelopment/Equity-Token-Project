require('dotenv').config();
require('babel-register');

var HDWalletProvider = require('truffle-hdwallet-provider');

module.exports = {
  networks: {
    development: {
      host: 'localhost',
      port: 8545,
      network_id: '*',
      gas: 4600000,
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(process.env.MNEMONIC, `https://ropsten.infura.io/${process.env.INFURA_API_KEY}`)
      },
      network_id: 3,
      gas: 4600000,
    },
    live: {
      provider: function() {
        return new HDWalletProvider(process.env.MNEMONIC, `https://mainnet.infura.io/${process.env.INFURA_API_KEY}`)
      },
      network_id: 1,
      gas: 4600000,
    },
    testrpc: {
      host: 'localhost',
      port: 8545,
      network_id: '*',
      gas: 4600000,
    },
    ganache: {
      host: 'localhost',
      port: 7545,
      network_id: '*',
    },
  },
};