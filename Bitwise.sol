// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitwiseMasking {
    function bitwiseDecomposition(uint8 num) public pure returns (uint8[] memory) {
        uint8[8] memory tempResult;  // Temporary fixed-size array (since uint8 has max 8 bits)
        uint8 mask = 1;  // Mask starts at 00000001
        uint8 count = 0;  // Counter to track the number of elements

        for (uint8 i = 0; i < 8; i++) {
            uint8 bitValue = num & mask;  // Extract current bit

            if (bitValue > 0) {
                tempResult[count] = bitValue;  // Store in temporary array
                count++;
            }

            mask = mask << 1;  // Move mask to the next bit position
        }

        // Create a new dynamic array with the exact required size
        uint8[] memory result = new uint8[](count);
        for (uint8 j = 0; j < count; j++) {
            result[j] = tempResult[j];  // Copy elements from tempResult
        }

        return result;
    }
}
