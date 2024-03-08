contract Parent {
    function messageFromParent() public pure returns (string memory) {
        return "Hello from Parent";
    }
}
contract Child is Parent {
    function messageFromChild(string memory newMessage) public pure returns (string memory) {
        string memory messageFromParent = messageFromParent();
        return string(abi.encodePacked(messageFromParent,', ', newMessage));
    }
}
