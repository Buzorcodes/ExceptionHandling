
# Metacrafters Token Contract

## Overview

The Metacrafters Token (MTC) contract is designed to create and manage a basic fungible token on the Ethereum blockchain. It includes the following features:

-   Token Name: "Metacrafters"
-   Token Symbol: "MTC"
-   Minting: Token owners can mint new tokens.
-   Burning: Token owners can burn (destroy) their own tokens.
-   Total Supply: Tracks the total supply of MTC tokens.
-   Ownership: The contract owner can perform administrative functions such as burning tokens.

## Smart Contract Details

### SPDX License Identifier

This contract is licensed under the MIT License. You can find the license details at the top of the contract file.

### State Variables

-   `TOKEN_NAME`: A public string variable representing the name of the token, which is "Metacrafters."
-   `TOKEN_ABBRV`: A public string variable representing the token abbreviation, which is "MTC."
-   `totalSupply`: A public unsigned integer variable that keeps track of the total supply of MTC tokens.
-   `owner`: An address variable representing the owner of the contract.

### Constructor

The contract constructor initializes the `owner` variable with the address of the deployer of the contract.

### Functions

1.  `mint(uint256 _value)`: This function allows users to mint new MTC tokens. It requires that the value to be minted is greater than 0. After successful minting, the total supply and the balance of the caller are updated.
    
2.  `burn(uint256 _value)`: Token owners can use this function to burn (destroy) their own tokens. It checks if the caller is the owner of the contract before allowing the burn operation. If the conditions are met, the total supply and the balance of the caller are updated accordingly.
    
3.  `checkTotalSupply()`: A view function that checks if the total supply of MTC tokens is less than 1000. If the total supply is less than 1000, it reverts with an error message; otherwise, it returns `true`.
    

## Usage

To deploy this contract and interact with it, you will need a development environment for Ethereum smart contracts, such as Remix or Truffle. You can deploy the contract to an Ethereum testnet or the mainnet.

### Deployment

1.  Deploy the contract to an Ethereum network.
2.  After deployment, the contract owner can mint and burn tokens as needed.
3.  Users can check the total supply of tokens using the `checkTotalSupply()` function.

### Security Considerations

-   Be cautious when using the `burn` function, as it can permanently destroy tokens, and only the contract owner can use it.
-   Ensure that the contract owner address is set correctly during deployment to prevent unauthorized access to administrative functions.

## License

This contract is distributed under the MIT License. You can find the full license text in the contract file.
