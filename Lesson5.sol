// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fproject {
    uint public appear;

    function get(uint _setV) external {
        
        require(_setV != 20, "The new value cannot be 20");
        assert(_setV != 10); 
        
        if (_setV == 20) {
            revert("The new Value cannot be 20");
        }

        appear = _setV;
    }
}
