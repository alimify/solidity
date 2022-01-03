// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ConditionContract {

    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function countEvenNumbers() public view returns(uint)
    {
        uint count = 0;
        for(uint i = 0; i < numbers.length; i++)
        {
            //Runs code
            if(isEvenNumber(numbers[i])){
                count ++;
            }
        }
        return count;
    }

    function isEvenNumber(uint _number) public pure returns(bool)
    {

        if(_number % 2 == 0){
            return true;
        } else {
            return false;
        }

    }


    function isOwner() public view returns(bool)
    {
        return (msg.sender == owner);
    }


}