module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  // from: the account truffle is deploying from.
  networks: {
    ganache: {
      host: "0.0.0.0",
      port: 7545,
      from: "0x9451988c41266A7faD710ab07153798f26035037",
      network_id: "*" // Match any network id
    },
    gethprivate: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" 
    }
  }
};
