// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RewardToken is ERC20 {
    uint256 public constant INITIAL_SUPPLY = 1000000000; // 1 billion

    constructor(address tokenHolder) ERC20("Rewards Token", "REWARD") {
        // fund the token swap contract
        _mint(tokenHolder, INITIAL_SUPPLY * 1e18);
    }
}
