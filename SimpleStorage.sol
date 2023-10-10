// SPDX-License-Identifier: MIT
pragma solidity ⌃0.8.8; // stable version

contract SimpleStorage {
// boolean, uint, int, address, bytes
// defaults to null (0)
uint256 favoriteNumber;

function store(uint256 _favoriteNumber) public {

favoriteNumber = _favoriteNumber;

}

