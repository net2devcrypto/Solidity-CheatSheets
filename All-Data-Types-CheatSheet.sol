pragma solidity ^0.8.0;

contract DataTypesExample {
    // Boolean
    bool public isCompleted = false;

    // Integer (signed and unsigned)
    int256 public signedInteger = -10;
    uint256 public unsignedInteger = 10;

    // Address
    address public userAddress = 0x742d35Cc6634C0532925a3b844Bc454e4438f44e;

    // String
    string public greeting = "Hello, World!";

    // Bytes (dynamic-size and fixed-size)
    bytes public dynamicBytes = "hello, solidity";
    bytes32 public fixedBytes = "hello, solidity";

    // Arrays (dynamic-size and fixed-size)
    uint[] public dynamicArray = [1, 2, 3];
    uint[5] public fixedArray = [1, 2, 3, 4, 5];

    address[] public dynamicAddressArray = [0xd41d1744871f42Bb724D777A2d0Bf53FB43a0040, 0x1f514ae9834aEAF6c2c3eb6D20E27e865F419010];
    address[3] public fixedAddressArray = [0xC90cd0D820D6dc447B3cD9545185B046873786A6, 0x401997E856CE51e0D4A8f26ce64952313BEA0E25, 0x221d3b9821f3Cc49B42E7dd487E2a6d1b3ed0E05];

    bool[] public dynamicBoolArray = [true, false, true];
    bool[2] public fixedBoolArray = [true, false];

    // Struct
    struct Person {
        string name;
        uint age;
    }
    Person public person = Person("Alice", 30);

    // Enums
    enum Status { Open, Closed, Pending }
    Status public currentStatus = Status.Open;
    Status public nextStatus = Status.Closed;
    Status public previousStatus = Status.Pending;

    // Mapping
    mapping(address => uint) public balances;

    constructor() {
        balances[msg.sender] = 100;
    }
}
