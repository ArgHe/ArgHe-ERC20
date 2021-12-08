pragma solidity ^0.5.17;

import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/GSN/Context.sol";

contract ArgHe is Context, ERC20Detailed, ERC20Mintable, ERC20Burnable
{
    constructor()
        public
        ERC20Detailed("Argonon Helium", "ARG", 18)
    { 
        // Assigns minting rights to the ArgHe multisig
        addMinter(0xD52AD7bdf3888bc0c5103Ee56693e5315033c7C3); 

        // Renounces the minting rights to the contract granted by default to the initiator of this code
        renounceMinter();
    }
}