// Solidity program to demonstrate 
// how to deploy a library
pragma solidity ^0.5.0;

// Defining Library
library LibExample {

    // Function to power of 
    // an unsigned integer
    function pow(uint a, uint b) public view returns (
      uint, address) {
        return (a ** b, address(this));
    }

    function addition (uint a, uint b) public pure returns(uint){

        uint  c= a+b;
        return c;
    }


    function checkisevenorodd (uint a) public pure returns(bool){
       bool c= false;
        if(a%2==0){
          c=true;
        }

        return c;
    }
}

// Defining calling contract
contract LibraryExample {
    
    // Deploying library using 
    // "for" keyword
    using LibExample for uint;
    address owner = address(this);
    
    // Calling function pow to 
    // calculate power 
    function getPow(
      uint num1, uint num2) public view returns (
      uint, address) {
        return num1.pow(num2);
    }


    function getaddition(uint num3, uint num4) public pure returns(uint){
        return num3.addition(num4);
    }


    function checkiseven (uint num) public pure returns (bool){

        if(num.checkisevenorodd()==true){
         return true;

        }
    }
}


/* 
Solidity has some inbuilt libraries for the ease of the users. Some of the libraries are listed below : 

Modular network: This includes many modular libraries that are very useful for implementation like ArrayUtils, Token, CrowdSale, Vesting, StringUtils, LinkedList, Wallet, etc.
OpenZeppelin: other supporting libraries are Roles, MerkleProof, ECDSA, Math, Address, SafeERC20, ERC165Checker, SafeMath, Arrays, etc which protects from overflow.
Dapp-bin: Created by Ethereum includes interesting and useful libraries like DoublyLinkedList, StringUtils, IterableMapping, etc.
*/
