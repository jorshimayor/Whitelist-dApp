require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({ path: ".env" });

const QUICKNODE_HTTP_URL = process.env.QUICKNODE_HTTP_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

module.exports = {
  solidity: "0.8.9",
  networks: {
    goerli: {
      url: "https://summer-stylish-forest.ethereum-goerli.discover.quiknode.pro/0d314b336ca5668c33a1cf702c10ffa542c859eb/",
      accounts: ["6645618b0f8701a95c258421a88c50b3be44a131ac408e10cd07bf9fa092f924"],
    },
  },
};