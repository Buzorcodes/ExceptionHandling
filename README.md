
# Exception Example Smart Contract

This repository contains a Solidity smart contract that demonstrates the usage of `require()`, `assert()`, and `revert()` statements in the context of Ethereum smart contract development.

## Overview

The `ExceptionExample` smart contract provides examples of how to handle exceptions and errors in a Solidity smart contract using the `require()`, `assert()`, and `revert()` statements. These statements are essential for ensuring the security and reliability of Ethereum smart contracts.

## Contract Details

### Owner and Value

-   `owner`: Stores the Ethereum address of the contract owner.
-   `value`: Stores an unsigned integer value.

### Modifiers

-   `onlyOwner()`: A custom modifier that restricts access to certain functions to only the contract owner. It uses `require()` to validate the caller's identity.

### Functions

1.  `constructor()`: Initializes the contract by setting the `owner` to the address of the sender.
    
2.  `setValue(uint256 _newValue) public onlyOwner`: Allows the owner to set the `value`. It uses `require()` to validate that `_newValue` is greater than 0.
    
3.  `assertExample(uint _checker) public pure returns (uint256)`: A function that demonstrates the usage of `assert()`. It compares two values and asserts that they are equal. This function takes an additional parameter `_checker` to customize the comparison.
    
4.  `revertExample(uint _divisor) public pure returns (uint256)`: A function that demonstrates the usage of `revert()`. It performs a division operation and explicitly reverts the transaction if the divisor is 0, preventing division by zero errors.
    

## Usage

### Setting a Value

To set the `value` in the contract:

1.  Deploy the `ExceptionExample` contract.
2.  Call the `setValue` function with the desired `_newValue` as a parameter. Only the contract owner can execute this function.

### Assert Example

The `assertExample` function is used to demonstrate the `assert()` statement. It checks if two values are equal and returns the result. To use it:

1.  Deploy the `ExceptionExample` contract.
2.  Call the `assertExample` function with an integer parameter `_checker`. It will assert that `_checker` is equal to 1.

### Revert Example

The `revertExample` function demonstrates the use of the `revert()` statement to handle division by zero errors. To use it:

1.  Deploy the `ExceptionExample` contract.
2.  Call the `revertExample` function with an integer parameter `_divisor`. If `_divisor` is set to 0, the function will explicitly revert the transaction.

## License

This project is licensed under the terms of the MIT license. 
