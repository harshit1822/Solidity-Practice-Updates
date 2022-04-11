// Inheritance Programs and Notes:
/* Solidity supports inheritance between smart contracts, where multiple contracts can be inherited into a single contract. The contract from which other contracts inherit features is known as a base contract, while the contract which inherits the features is called a derived contract. */
 

//Program 1
// Solidity program to
// demonstrate
// Single Inheritance
pragma solidity >=0.4.22 <0.6.0;

// Defining contract
contract parent{

	// Declaring internal
	// state variable
	uint internal sum;
	
	// Defining external function
	// to set value of internal
	// state variable sum
	function setValue() external {
		uint a = 10;
		uint b = 20;
		sum = a + b;
	}
}

// Defining child contract
contract child is parent{
	
	// Defining external function
	// to return value of
	// internal state variable sum
	function getValue() external view return(uint) {
		return sum;
	}
}

// Defining calling contract
contract caller {

	// Creating child contract object
	child cc = new child();
	
	// Defining function to call
	// setValue and getValue functions
	function testInheritance(
	) public returns (uint) {
		cc.setValue();
		return cc.getValue();
	}
}
