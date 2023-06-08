// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract DataLocations {

    //storage, memory ve calldata
    
    //storage -> declaring state variables
    uint public storedData;
    string public storedString;

    function set (uint x, string calldata s) public {
        storedData = x;
        storedString = s;
    }

    function get() public view returns (uint, string memory) {
        return (storedData, storedString);
    }

    function double(uint[] calldata nums) public pure returns (uint[] memory) {
        uint[] memory result = new uint[](nums.length);

        for (uint i = 0; i < nums.length; i++) {
            result[i] = nums[i] * 2;
        }
        return result;
    }
}
