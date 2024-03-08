contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
}

contract MyContract is Ownable {
    function doSomething() public onlyOwner {
        // This function can only be called by the owner of the contract
    }
}
