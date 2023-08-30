// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// require, revert and assert
contract Metacrafters {
// public variable
    string public  TOKEN_NAME = "Metacrafters";
    string public  TOKEN_ABBRV = "MTC";
    uint256 public totalSupply;
    address public owner;

constructor() {
    owner = msg.sender;
}
    // mapping variable here
    mapping(address => uint256) public balanceOf;

    // mint function
    function mint(uint256 _value) public {
        require(_value > 0, "value must be greater than 0");
        uint256 oldTotalSupply = totalSupply;
        assert((totalSupply + _value) > oldTotalSupply );
        totalSupply += _value;
        balanceOf[msg.sender] += _value;
    }

    // burn function
    function burn(uint256 _value) public {
        require(msg.sender == owner, "Only owner can call this function");
           totalSupply -= _value;
            balanceOf[msg.sender] -= _value;

    }

    function checkTotalSupply() public view returns( bool){
             if(totalSupply < 1000) {
                revert("Total supply cannot be less than a thousand");
            }

            return true;
    }
}
