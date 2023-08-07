// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {

    function setValue(uint256 newValue) public pure {
        // Use require() to validate input conditions
        require(newValue > 10, "New value must be greater than 10");

    }

    function assertExample(uint256 x, uint256 y) public pure returns (uint256) {
        // Use assert() to validate internal consistency
        assert(x != y);

        return x + y;
    }

    function revertExample(uint256 a, uint256 b) public pure returns (uint256) {
        // Use revert() to revert execution and provide a custom error message
        if (b == 0) {
            revert("Division by zero is not allowed");
        }

        return a / b;
    }
}
