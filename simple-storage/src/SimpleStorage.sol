// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
    uint256 myFavoriteNum;

    struct Person {
        uint256 favoriteNum;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNum;

    // Functions
    function store(uint256 _favoriteNum) public {
        myFavoriteNum = _favoriteNum;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNum;
    }

    function addPerson(string memory _name, uint256 _favoriteNum) public {
        listOfPeople.push(Person(_favoriteNum, _name));
        nameToFavoriteNum[_name] = _favoriteNum;
    }
}
