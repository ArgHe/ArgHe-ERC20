pragma solidity ^0.5.17;

import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/GSN/Context.sol";

contract ArgHe is Context, ERC20Detailed, ERC20Burnable
{
    constructor()
        public
        ERC20Detailed("ArgHe", "ARG", 18)
    { 
        // Mint the only 1 billion tokens to exist, to the ArgHe multisig
        _mint(0xD52AD7bdf3888bc0c5103Ee56693e5315033c7C3, 1000000000 * 10**18);
    }
}