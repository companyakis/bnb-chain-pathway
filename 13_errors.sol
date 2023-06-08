// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Errors {

    uint storedData;

    function set(uint x) public {
        require (x != 0, "x can't be zero!");
        storedData = x;
    }

    function add (uint x, uint y) public pure returns (uint) {
        uint result = x + y;

        if (result < x || result < y) {
            revert ("result overflowed!");
        }

        return result;
    }

    function divide (uint x, uint y) public pure returns (uint) {
        assert(y != 0);
        return x / y;
    }
}
