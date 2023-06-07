// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

contract Whitelist {

    //max number of whitelisted addresses allowed
    uint8 public maxWhitelistAddresses;

    //Creates a mapping of whiteListedAddress. 
    //If an address is WhiteListed, it's set to true, it's false by default for all other addresses
    mapping (address => bool) public whitelistedAddresses;

    //numAddressWhiteListed would be used to keep track of how many addresses have been whitelisted
    //This variable will be used for verification
    uint8 public numAddressesWhitelisted;

    //Setting the max num of whitelisted addresses
    //User will put value at the time of deployment
    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistAddresses = _maxWhitelistedAddresses;
    }

    //addAddressToWhitelist - This function adds the address of the sender to the whitelist
    function addAddressToWhitelist()  public {  
        //check if the user has already been whitelisted
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");

        //check if the numAddressesWhitelisted < maxWhitelistedAddresses, if not then throw an error
        require(numAddressesWhitelisted < maxWhitelistAddresses, "More addresses can't be added, limit reached");

        //add the address which called the function to the whitelistedAddress array
        whitelistedAddresses[msg.sender] = true;

        //Increase the number of whitelisted addresses
        numAddressesWhitelisted += 1;
    }

}