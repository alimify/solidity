// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract Arrays {

    uint[] public uintArray = [1,2,3,4,5];
    string[] public stringArray = ["Apple","Orange"];
    string[] public pushArray;
    uint[][] public array2D = [[1,2,3],[5,6,7]];

    function addValue(string memory _value) public
    {
        pushArray.push(_value);
    }

    function valueCount() public view returns(uint)
    {
        return pushArray.length;
    }



}