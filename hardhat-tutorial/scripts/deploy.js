const { ethers } = require("hardhat");

async function main(){

  //A ContractFactory in ethers.js is an abstraction used to deploy new smart contracts,
  //so whitelistContract here is a factory for instances of our Whitelist Contract
  const whitelistContract = await ethers.getContractFactory("Whitelist");

  //contract is deployed
  const deployedWhitelistContract = await whitelistContract.deploy(10);
  // 10 is the maximum number of whitelisted addresses allowed

  //wait for contract to be deployed
  await deployedWhitelistContract.deployed();

  //print the address of the deployed contract
  console.log("Whitelist Contract Address:", deployedWhitelistContract.address);

}

main()
  .then(() => process.exit(0))
  .catch((error)=> {
    console.error(error);
    process.exit(1);
  });