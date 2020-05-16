// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.6.2;

// We import this library to be able to use console.log
import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";
import "@nomiclabs/buidler/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


// This is the main building block for smart contracts.
abstract contract Token is ERC20Capped {
  
    constructor(string memory name, string memory symbol, uint256 cap) ERC20(name,symbol) ERC20Capped(cap) public  {

       //  console.log("Minting 1000!");

        _mint(msg.sender,1000);
    }

    function help() public view returns(bool) {
        return true;
    }

    }

  