// SPDX-License-Identifier: MIT 

pragma solidity 0.8.17;

contract Integers {

//uint -> (uint8, uint16, uint32, uint64, uint128, uint256), can't be negative values
//int -> (int8, int16, int32, int64, int128, int256), can be negative values

uint public numberOne;

int public numberTwo;

function setNumberOne(uint newNumOne) public {
    numberOne = newNumOne;
  }

function setNumberTwo(int newNumTwo) public {
    numberTwo = newNumTwo;
  }

function sum() public view returns(uint) {
    return numberOne + 25;
  }
}
