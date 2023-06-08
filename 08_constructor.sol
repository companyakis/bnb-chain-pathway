// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Constructor {

    address public owner;
    string public name;
    uint public age;

    //the constructor func will be executed once when we deploy a contract
    constructor (string memory _name, uint _age) {
        owner = msg.sender;
        name = _name;
        age = _age;
    }

    //pre-check
    modifier onlyOwner() {
        require(msg.sender == owner, "Only thw owner can call this function");
        _;
    }

    function changeName(string memory _newName) public onlyOwner {
        name = _newName;
    }
}   
