// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    // minDelay is how long you to wait before executing
    // proposals is the list of addresses that can propose
    // executers is the list of addresses that can execute
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executers)
        TimelockController(minDelay, proposers, executers, msg.sender)
    {}
}
