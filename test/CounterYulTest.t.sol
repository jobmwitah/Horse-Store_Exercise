// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {BaseTest, ICounter} from "./BaseTest.t.sol";
import {CounterYul} from "../src/CounterYul.sol";

contract CounterYulTest is BaseTest {
    function setUp() public override {
        counterSolc = ICounter(address(new CounterYul()));
    }
}
