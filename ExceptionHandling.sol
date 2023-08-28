// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ExceptionExample {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setValue(uint256 _newValue) public onlyOwner {
        // Use require() to validate inputs
        require(_newValue > 0, "Value must be greater than 0");
        value = _newValue;
    }

    function assertExample(uint _checker) public pure returns (uint256) {
        uint256 x = 1;
        uint256 y = _checker;

        // Use assert() to check internal errors
        assert(x == y); 


        return x;
    }

    function revertExample(uint _divisor) public pure returns (uint256) {
        uint256 a = 10;
        uint256 b = _divisor;

        // Use revert() to explicitly revert the transaction
        if (b == 0) {
            revert("Division by zero is not allowed");
        }

        return a / b;
    }
}
