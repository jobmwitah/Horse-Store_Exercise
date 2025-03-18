// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {BaseTest, ICounter} from "./BaseTest.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract CounterHuffTest is BaseTest {
    string public constant COUNTER_HUFF_LOCATION = "CounterHuff";

    function setUp() public override {
        counterSolc = ICounter(HuffDeployer.config().deploy(COUNTER_HUFF_LOCATION));
    }
}
