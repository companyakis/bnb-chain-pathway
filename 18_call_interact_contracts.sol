// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;


contract ContractA {
    uint public someValue;

    function setValue (uint newValue) public {
        someValue = newValue;
    }
}

contract ContractB {
    function setValueOnContractA (address _contractA, uint newValue) public {
        _contractA.call(abi.encodeWithSignature("setValue(uint256)", newValue));
    }
}
