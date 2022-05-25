//SPDX-License-Identifier : UNLICENSED

pragma solidity ^0.5.0;

contract contracA{


    uint A;
   address public owner;

   constructor() public payable {
       owner=msg.sender;
   }


   
   modifier onlyOwner{
         require (owner==msg.sender, "Only Owner is allowed");
         _;
        }

   
     

    function set(uint a) external  onlyOwner returns(uint){

     A=a;
     return A;

    }

    function transferOwner(address newOwner)external onlyOwner{
     owner = newOwner;
    }


    function get() external view returns(uint){

        return A;
    }


    function get2(uint AB) external pure returns(uint) {

         uint ab= AB;
         return ab;
    }

    function checkowner(address own) external view returns(bool){


        if(own == owner){
            return true;

        }

        else{
            return false;
        }
    }




//     function onlyowner()public view returns(bool){
     
//     }
}