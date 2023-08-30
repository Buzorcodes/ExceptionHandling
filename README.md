
# Exception Example Smart Contract

  

This repository contains a Solidity smart contract that demonstrates the usage of `require()`, `assert()`, and `revert()` statements in the context of Ethereum smart contract development.

# Metacrafters Token Contract

  

## Overview

  

The `ExceptionExample` smart contract provides examples of how to handle exceptions and errors in a Solidity smart contract using the `require()`, `assert()`, and `revert()` statements. These statements are essential for ensuring the security and reliability of Ethereum smart contracts.

The Metacrafters Token (MTC) contract is designed to create and manage a basic fungible token on the Ethereum blockchain. It includes the following features:

  

- Token Name: "Metacrafters"

- Token Symbol: "MTC"

- Minting: Token owners can mint new tokens.

- Burning: Token owners can burn (destroy) their own tokens.

- Total Supply: Tracks the total supply of MTC tokens.

- Ownership: The contract owner can perform administrative functions such as burning tokens.

  

## Smart Contract Details

  

##  Contract Details

### SPDX License Identifier

  

### Owner and Value

This contract is licensed under the MIT License. You can find the license details at the top of the contract file.

  

- `owner`: Stores the Ethereum address of the contract owner.

- `value`: Stores an unsigned integer value.

### State Variables

  

### Modifiers

- `TOKEN_NAME`: A public string variable representing the name of the token, which is "Metacrafters."

- `TOKEN_ABBRV`: A public string variable representing the token abbreviation, which is "MTC."

- `totalSupply`: A public unsigned integer variable that keeps track of the total supply of MTC tokens.

- `owner`: An address variable representing the owner of the contract.

  

- `onlyOwner()`: A custom modifier that restricts access to certain functions to only the contract owner. It uses `require()` to validate the caller's identity.

### Constructor

  

The contract constructor initializes the `owner` variable with the address of the deployer of the contract.

  

### Functions

  

1. `constructor()`: Initializes the contract by setting the `owner` to the address of the sender.

  

2. `setValue(uint256 _newValue) public onlyOwner`: Allows the owner to set the `value`. It uses `require()` to validate that `_newValue` is greater than 0.

1. `mint(uint256 _value)`: This function allows users to mint new MTC tokens. It requires that the value to be minted is greater than 0. After successful minting, the total supply and the balance of the caller are updated.

  

3. `assertExample(uint _checker) public pure returns (uint256)`: A function that demonstrates the usage of `assert()`. It compares two values and asserts that they are equal. This function takes an additional parameter `_checker` to customize the comparison.

2. `burn(uint256 _value)`: Token owners can use this function to burn (destroy) their own tokens. It checks if the caller is the owner of the contract before allowing the burn operation. If the conditions are met, the total supply and the balance of the caller are updated accordingly.

  

4. `revertExample(uint _divisor) public pure returns (uint256)`: A function that demonstrates the usage of `revert()`. It performs a division operation and explicitly reverts the transaction if the divisor is 0, preventing division by zero errors.

3. `checkTotalSupply()`: A view function that checks if the total supply of MTC tokens is less than 1000. If the total supply is less than 1000, it reverts with an error message; otherwise, it returns `true`.

  

  

## Usage

  

### Setting a Value

  

To set the `value` in the contract:

  

1. Deploy the `ExceptionExample` contract.

2. Call the `setValue` function with the desired `_newValue` as a parameter. Only the contract owner can execute this function.

  

### Assert Example

  

The `assertExample` function is used to demonstrate the `assert()` statement. It checks if two values are equal and returns the result. To use it:

To deploy this contract and interact with it, you will need a development environment for Ethereum smart contracts, such as Remix or Truffle. You can deploy the contract to an Ethereum testnet or the mainnet.

  

1. Deploy the `ExceptionExample` contract.

2. Call the `assertExample` function with an integer parameter `_checker`. It will assert that `_checker` is equal to 1.

### Deployment

  

### Revert Example

1. Deploy the contract to an Ethereum network.

2. After deployment, the contract owner can mint and burn tokens as needed.

3. Users can check the total supply of tokens using the `checkTotalSupply()` function.

  

The `revertExample` function demonstrates the use of the `revert()` statement to handle division by zero errors. To use it:

### Security Considerations

  

1. Deploy the `ExceptionExample`  contract.

2. Call the `revertExample` function with an integer parameter `_divisor`. If `_divisor`  is set to 0, the function will explicitly revert the transaction.

- Be cautious when using the `burn` function, as it can permanently destroy tokens, and only the contract owner can use it.

- Ensure that the contract owner address is set correctly during deployment to prevent unauthorized access to administrative functions.

  

## License

  

This project is licensed under the terms of the MIT license.

This contract is distributed under the MIT License. You can find the full license text in the contract file.
