// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Modifiers {
    address public owner;
    uint public myNumber;

    constructor(uint _myNumber) {
        owner = msg.sender;
        myNumber = _myNumber;
    }

    modifier onlyOwnerorAddress(address _allowedAddress) {
        require (
            msg.sender == owner || msg.sender == _allowedAddress,
            "Please, only the owner or an allowed address can call this function:("
        );
        _;
    }

    function changeNumber(uint _newNumber) public onlyOwnerorAddress(address(0x456)) {
        myNumber = _newNumber;
    }
}
