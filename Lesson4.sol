// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contracted {
    address public Owner;
    uint256 public Balance;

    constructor() {
        Owner = msg.sender;
    }


    receive() external payable {
        Balance += msg.value;
    }


    function Sender() external view returns (address) {
        return msg.sender;
    }


    function Value() external payable returns (uint256) {
        return msg.value;
    }


    function GasRemaining() external view returns (uint256) {
        return gasleft();
    }
}
