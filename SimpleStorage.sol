// SPDX-License-Identifier: MIT
pragma solidity ⌃0.8.8; // stable version

// boolean, uint, int, address, bytes
contract SimpleStorage {
// defaults to null (0)
uint256 public favoriteNumber;

function store(uint256 _favoriteNumber) public {

favoriteNumber = _favoriteNumber;

}

