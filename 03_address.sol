// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Address {

    //0x5B38Da6a701c568545dCfcB03FcB875f56XXXXXX
    //we can use msg.sender
    address private owner = msg.sender;

    function getOwner() public view returns(address) {
        return owner;
    }
}
