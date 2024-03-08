library SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "Addition overflow");

        return c;
    }
}

contract MyContract {
    using SafeMath for uint256;

    uint256 public value;

    function increment(uint256 amount) public {
        value = value.add(amount);
    }
}
