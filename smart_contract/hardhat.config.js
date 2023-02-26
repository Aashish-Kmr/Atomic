require('@nomiclabs/hardhat-waffle')
module.exports={
  solidity: '0.8.0',
  defaultNetwork: "goerli",
  networks: {
    hardhat: {
    }, 
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/kmkcUMJRkc-CyKLAggxxIJlgrSCFTMUx",
      accounts:['76e8b2943b1ed17a39c3142e8b8d0926ceacb743ed3bca7d90bb59556055c48c']
}
}
}