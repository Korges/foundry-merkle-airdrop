// SPDX-License-Identifier: MIT

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

pragma solidity ^0.8.30;

contract BagelToken is ERC20, Ownable {
    constructor(address owner) ERC20("Bagel", "BAGEL") Ownable(owner) { }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
