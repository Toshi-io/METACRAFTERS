//SPDX-License-Identifier:MIT
pragma solidity ^0.8.25;

contract admin{
    
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyowner{
        require(owner == msg.sender, "Access for Owner only");
        _;
    }
}
