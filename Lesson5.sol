// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Fproject {

    function required(uint _requiredvalue) public pure {
        require(_requiredvalue != 30, "required error input cannot be 30");
    } 

    function reverted(uint _revertvalue) public pure {
        if (_revertvalue == 20) {
            revert("revert error input cannot be 20");
        }
    }
    
    function asserted(uint _assertvalue) public pure{
        assert(_assertvalue != 10); 
    }
}
