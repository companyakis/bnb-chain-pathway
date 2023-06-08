// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract StringAndBytes {

    string public greeting = "Greetings:)";

    bytes public helloText = "I said Hi!";

    //byte to string

    string public convertedText = string(helloText);
}
