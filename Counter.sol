// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract Counter {
    // unsigned integer
    uint public count = 0;

    // function getCount() public view returns(uint)
    // {
    //     return count;
    // }

    function increamentCount() public 
    {
        count ++;
    }
}