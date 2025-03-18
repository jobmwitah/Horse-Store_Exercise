// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {ICounter} from "../src/interfaces/ICounter.sol";
import {CounterSolc} from "../src/CounterSolc.sol";

abstract contract BaseTest is Test {
    ICounter public counterSolc;

    function setUp() public virtual {
        counterSolc = ICounter(address(new CounterSolc()));
        counterSolc.setNumber(0);
    }

    function test_Increment() public {
        counterSolc.increment();
        assertEq(counterSolc.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counterSolc.setNumber(x);
        assertEq(counterSolc.number(), x);
    }
}
