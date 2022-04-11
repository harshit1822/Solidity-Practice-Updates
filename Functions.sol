// SPDX-License-Identifier: MIT
pragma solidity ^0.5.11

contract Mycontract {
    uint value;

    function getvalue() external view returns(uint){

        return value;
    }
    function setvalue(uint _value) external {
        value = _value;
        
    }
}