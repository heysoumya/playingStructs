//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract PlayingStructs {

//people struct with a number and string
    struct People{
        uint256 favoriteNumber;
        string favoriteString;
    }

    People[] public person;
    mapping(uint256 => string) public numberToFavString;

    function addPerson(uint256 _favoriteNumber, string memory _favoriteString) public{
        person.push(People({favoriteString:_favoriteString, favoriteNumber: _favoriteNumber}));
        numberToFavString[_favoriteNumber] = _favoriteString;
    }

//home struct with mom, father and # of kids
    struct Home{
        string mom;
        string father;
        uint256 kids;
    }

    Home[] public family;


    function addFamily(string memory _mom, string memory _father, uint256 _kids) public{
        family.push(Home({mom: _mom, father:_father,kids:_kids}));
    }

//kids struct with kids name upto 3 kids
    struct Kids{
        string kid1;
        string kid2;
        string kid3;
    }

    Kids[] public kid;

    function addKids(string memory _kid1,string memory _kid2,string memory _kid3) public{
        kid.push(Kids({kid1:_kid1,kid2:_kid2,kid3:_kid3}));
    }
}

