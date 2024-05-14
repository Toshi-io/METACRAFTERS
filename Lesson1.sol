// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Admin{

        address public  Owner;

        constructor(){
        Owner = msg.sender;
    }

     modifier onlyOwner { 
        require (Owner == msg.sender, "Owner can access");
        _;
    }


}
