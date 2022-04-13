// 13th april




// Libraries :

/* Libraries in solidity are similar to contracts that contain reusable codes. A library has functions that can be called by other contracts. Deploying a common code by creating a library reduces the gas cost. Functions of the library can be called directly when they do not modify the state variables i.e. only pure and view functions can be called from outside of the library. It cannot be destroyed because it is assumed as stateless. The library does not have state variables, it cannot inherit any element and cannot be inherited. 

How to define a library : 

A library contract is defined by using the library keyword instead of a general contract. Libraries do not have any storage thus it cannot hold state variables, fallback or payable functions also cannot be created inside the library as it cannot store ethers. Libraries are not for changing the state of the contract, it can only be used for performing basic operations based on inputs and outputs. However it can implement some data types like struct and enums which are user-defined, and constant variables that are stored in a stack of Ethereum, not in storage. 

Syntax:

library <libraryName> {
    // block of code
}


*/


// Solidity program to demonstrate 
// how to create a library
pragma solidity ^0.5.0;

// Library Definition
library libraryExample {
    
    // Defining structure
    struct Constants {

        // Declaring variables
        uint Pi;             
        uint EulerNb;        
        uint PythagoraConst; 
        uint TheodorusConst; 
    }
    
}



// SafeMath restores this intuition by reverting the transaction when an operation overflows.




