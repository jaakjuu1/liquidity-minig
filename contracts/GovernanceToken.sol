pragma solidity ^0.7.3;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/account/Ownable.sol";

contract GovernanceToken is ERC20, Ownable {
    constructor() ERC20("GovernanceToken", "GTK") Ownable() {}

    function mint(address to, uint amount) external onlyOwner() {
        _mint(to, amount);
    }
}