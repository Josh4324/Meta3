//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/*
 * @author Joshua Adesanya
 * @title Josh Coin
 * @notice This contract allows you to mint test josh coin. 
 */
contract JoshToken is ERC20, Ownable {
    // Errors
    // Interfaces, Libraries, Contracts
    // State variables
    // Events
    // Modifiers
    // Functions

    // Constructor
    constructor() ERC20("Josh Token", "JT") Ownable(msg.sender) {}

    // External Functions

    /// @notice mint tokens to the inputed address
    /// @dev
    /// @param addr The address that will get the minted token
    function mint(address addr, uint256 amount) external onlyOwner {
        _mint(addr, amount);
    }

    /// @notice burn tokens to zero address
    /// @dev
    /// @param addr The address from which tokens will be burned
    /// @param amount The amount of token to be burned
    function burn(address addr, uint256 amount) external {
        _burn(addr, amount);
    }
}