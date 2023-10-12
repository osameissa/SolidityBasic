// SPDX-License-Identifier: MIT 
pragma solidity ⌃0.8.8;

// boolean, uint, int, address, bytes
contract SimpleStorage {
// defaults to null (0)
// public, private, external, internal (default)
uint256 public favoriteNumber;

mapping(string => uint256) public nameToFavoriteNumber;

struct People { 
uint256 favoriteNumber;
string name;
}

People[] public people;

function store(uint256 _favoriteNumber) public {

favoriteNumber = _favoriteNumber;

// calldata, memory, storage
function addPerson(string memory _name, uint256 _favoriteNumber) public {
people.push(People(_favoriteNumber, _name));
nameToFavoriteNumber[_name] = _favoriteNumber;
 
  }
}
