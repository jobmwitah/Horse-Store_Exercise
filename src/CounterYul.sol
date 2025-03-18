// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract CounterYul {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        // number = newNumber;
        assembly {
            let num := newNumber
            sstore(number.slot, num)
        }
    }

    function increment() public {
        // number++;
        assembly {
            let num := sload(number.slot)
            num := add(num, 1)
            sstore(number.slot, num)
        }
    }
}
