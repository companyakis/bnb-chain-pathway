// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ContractA {
    uint public someValue;

    function setValue (uint newValue) external {
        someValue = newValue;
    }
}

interface ContractAInterface {
    function setValue(uint) external;
}

contract ContractB {
    function setValueOnContractA(address _contractA, uint newValue) public {
        ContractAInterface (_contractA).setValue(newValue);
    }
}
