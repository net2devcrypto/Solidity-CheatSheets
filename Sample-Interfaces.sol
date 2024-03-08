interface SomeInterface {
    function doSomething() external returns (uint256);
}

contract SomeContract is SomeInterface {
    uint256 private counter;

    function doSomething() external override returns (uint256) {
        counter += 1;
        return counter;
    }
}
