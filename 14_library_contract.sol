// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "./library.sol"; //please, write the correct path for the written library

contract LibraryContract {
    uint[] myNumbers = [1, 2, 3, 4, 5];

    function douubleMyNumbers() public view returns (uint[] memory) {
        return MyLibrary.double(myNumbers);
    }
}
