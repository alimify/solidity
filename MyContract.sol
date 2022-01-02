// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract MyContract {
    // State variable
    //  integer datatype
    int public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    // string datatype
    string public myString = "Hello world";
    bytes32 public myBytes32 = "Hello byte32";
    address public myAddress = 0x5A0b54D5dc17e0AadC383d2db43B0a0D3E029c4c;

    struct MyStruct {
        uint myInt;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello world");

    // Local variable
    function getValue() public pure returns(uint) {
        uint val = 1;

        return val;
    }
   
}