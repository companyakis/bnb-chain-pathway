// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Functions {

    //state variable
    string public stateString = "Hello again:)";

    //view function ->read-only logic, not modify state
    //no gas cost, b/c read-only
    function viewFunction() public view returns (string memory) {
        return stateString;
    }

    //pure function
    //some calculations will be performed
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
