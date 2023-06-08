//if else, for, while

// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ControlStructures {

    function ifElse (uint x) public pure returns (uint) {
    
        //ternary usage, but we can use classic if else structure
        return x > 10 ? x + 1 : x - 1;
    }

    function forLoop(uint stop) public pure returns (uint) {
        uint sum = 0;

        for (uint i = 0; i < 10; i++) {
            sum += i;
            if (stop == i) {
                break;
            }
        }
        return sum;
    }

    function whileLoop(uint number) public pure returns (uint) {
        uint count = 0;
        while (number != 0) {
            count ++;
            number --;
        }
        return count;
    }
}
