// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {

    function adding(uint256 y, uint256 z) public pure returns (uint256) {
        return y + z;
    }
    function subtracting(uint256 y, uint256 z) public pure returns (uint256) {
        return  y - z;
    }
    function multiplying(uint256 y, uint256 z) public pure returns (uint256) {
        return y * z;
    }
    function dividing(uint256 y, uint256 z) public pure returns (uint256) {
        require(y != z, "Divided by zero");
        return y / z;
    }
}
