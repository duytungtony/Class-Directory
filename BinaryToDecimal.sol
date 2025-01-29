// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BinaryToDecimal {
    function binaryToDecimal(string memory binaryString) public pure returns (uint) {
        bytes memory binaryBytes = bytes(binaryString);
        uint decimal = 0;
        uint length = binaryBytes.length;

        // Iterate each element 
        for (uint i = 0; i < length; i++) {
            require(binaryBytes[i] == '0' || binaryBytes[i] == '1', "Invalid binary number");

            if (binaryBytes[i] == '1') {
                // Add to the sum as formula: 2^(lenght - 1 - i)
                decimal += 2 ** (length - 1 - i);
            }
        }

        return decimal;
    }
}
