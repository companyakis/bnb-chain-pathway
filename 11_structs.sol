// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Structs {
    struct User {
        string name;
        uint age;
        address wallet;
    }

    //declaring an array 
    User[] public users;

    function doOperations() external {
        User memory user1 = User("Xman", 29, msg.sender);

        User memory user2 = User({name: "Ygirl", age: 33, wallet: msg.sender});

        User memory user3;
        user3.name = "Zboy";
        user3.age = 18;
        user3.wallet = msg.sender;

        users.push(user1);
        users.push(user2);
        users.push(user3);
    }
}
