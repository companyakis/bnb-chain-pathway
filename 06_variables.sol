// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Variables {

    //declare a state variable
    string public aStateVar = "I'm a state variable";

    function add(uint aNum) public pure returns (uint) {
        //declare a local variable
        uint localNum = 101;
        return aNum + localNum;
    }

    function globalVariables() public view returns (address, uint, uint) {
        //global variables
        return (msg.sender, block.timestamp, block.number);
    }
}
