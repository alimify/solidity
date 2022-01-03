// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract MappingContract {

    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public nestedMapping;


    struct Book {
        string title;
        string author;
    }

    constructor()
    {
        names[1] = "Apple";
        names[2] = "Orange";
        names[3] = "Banana";
    }

    function addBook(uint _id, string memory _title, string memory _author) public 
    {
        books[_id] = Book(_title, _author);
    }

    function addNestedBook(uint _id, string memory _title, string memory _author) public
    {
        nestedMapping[msg.sender][_id] = Book(_title, _author);
    }

}