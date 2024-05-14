// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Events {
    event AddEvent(uint indexed result, string message);
    event SubtractEvent(uint indexed result,string message);
    event MultiplyEvent(uint indexed result,string message);
    uint public result;

    constructor() {
        result = 0;
    }

    function add(uint _num1, uint _num2) public {
        result = _num1 + _num2;
        emit AddEvent(result, "EVENT ADDED");
    }

    function deduct(uint _num1, uint _num2) public {
        result = _num1 - _num2;
        emit SubtractEvent(result, "EVENT DEDUCTED");
    }

    function multiply(uint _num1, uint _num2) public {
        result = _num1 * _num2;
        emit MultiplyEvent(result, "EVENT MULTIFLIED");
    }
}
