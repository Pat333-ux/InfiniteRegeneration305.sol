pragma solidity ^0.8.0;

contract InfiniteRegeneration305 {
    uint256 public value;
    uint256 public constant MAX_VALUE = 305;

    event ValueAdvanced(uint256 indexed newValue);

    function advanceValue() external {
        value += 1;

        if (value > MAX_VALUE) {
            value = 0;
        }

        emit ValueAdvanced(value);
    }
}
