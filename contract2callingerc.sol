pragma solidity ^0.8.6;

// SPDX-License-Identifier: MIT
 import "erc20.sol";
 contract Interaction {
    address counterAddr;

    function setCounterAddr(address calladdress) public {
       counterAddr = calladdress;
       
    }

    function getmint(uint a) public  returns (bool) {
       Token mintcaller = Token(counterAddr);

       mintcaller.mint(a, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }


    function sendtoken(address _to, uint tokn) public returns (bool){
        Token mintcaller = Token(counterAddr);
        mintcaller.transfer(_to, tokn);

    }

    function payether(address _to) public payable {
     require (msg.value == 5 ether);
       Token mintcaller = Token(counterAddr);
        mintcaller.transfer(_to, 5);


    }

    function check_balance() public view returns (uint){
        return address(this).balance;

    }
}