# Token Contract README

## Introduction

This project is a simple implementation of a token contract on the Ethereum blockchain. The contract allows for minting and burning tokens, as well as storing details about the token such as its name, abbreviation, and total supply.

## Requirements

1. **Public Variables**: The contract contains public variables to store the details about the token:
   - `tokenName`: Name of the token.
   - `tokenAbbreviation`: Abbreviation of the token.
   - `totalSupply`: Total supply of the token.

2. **Mapping of Addresses to Balances**: The contract utilizes a mapping to track balances of addresses:
   - `balances`: Mapping of addresses to their token balances.

3. **Mint Function**: A function named `mint` is implemented that takes two parameters:
   - `recipient`: The address to which tokens will be minted.
   - `value`: The amount of tokens to be minted.
   
   This function increases the total supply by the specified amount and increases the balance of the sender address by that amount.

4. **Burn Function**: A function named `burn` is implemented that works opposite to the `mint` function. It takes two parameters:
   - `sender`: The address from which tokens will be burned.
   - `value`: The amount of tokens to be burned.
   
   This function deducts the specified amount from the total supply and from the balance of the sender.

5. **Validation in Burn Function**: The `burn` function includes conditionals to ensure that the balance of the sender is greater than or equal to the amount that is supposed to be burned.

## License

This project is licensed under the [MIT License](LICENSE).
