// Here is the Work I've done on 12th April:

//Practicing Arrays 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ArrayReplaceFromEnd {
    uint[] public arr;

    // Deleting an element creates a gap in the array.
    // One trick to keep the array compact is to
    // move the last element into the place to delete.
    function remove(uint index) public {
        // Move the last element into the place to delete
        arr[index] = arr[arr.length - 1];
        // Remove the last element
        arr.pop();
    }

    function test() public {
        arr = [1, 2, 3, 4];

        remove(1);
        // [1, 4, 3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1, 4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}



pragma solidity ^0.5.0;

contract test {
   function testArray() public pure{
      uint len = 7; 
      
      //dynamic array
      uint[] memory a = new uint[](7);
      
      //bytes is same as byte[]
      bytes memory b = new bytes(len);
      
      assert(a.length == 7);
      assert(b.length == len);
      
      //access array variable
      a[6] = 8;
      
      //test array variable
      assert(a[6] == 8);
      
      //static array
      uint[3] memory c = [uint(1) , 2, 3];
      assert(c.length == 3);
   }
}





// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Append to array
        // increase the array length by 1.
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }

    function examples() external {
        // create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
    }
}




// Solidity program to demonstrate 
// creating a fixed-size array 
pragma solidity ^0.5.0;  
  
// Creating a contract 
contract Types {  
  
    // Declaring state variables
    // of type array
    uint[6] data1;    
      
    // Defining function to add 
    // values to an array 
    function array_example() public returns (
    int[5] memory, uint[6] memory){  
            
        int[5] memory data 
        = [int(50), -63, 77, -28, 90];  
        data1 
        = [uint(10), 20, 30, 40, 50, 60];
            
        return (data, data1);  
  }  
}



//Constructors Learning 






// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Base contract X
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

// Base contract Y
contract Y   {
    string public text;

    constructor (string memory _text) {
        text = _text;
    }
}

// There are 2 ways to initialize parent contract with parameters.

// Pass the parameters here in the inheritance list.
contract B is X("Input to X"), Y("Input to Y") 
{

}

contract C   is X, Y {
    // Pass the parameters here in the constructor,
    // similar to function modifiers.
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}


   contract D is X, Y {
     constructor() X("X was called") Y("Y was called") {}
}

// Order of  constructors called  :
// 1. X
// 2. Y
// 3. E
   contract E is X, Y {
    constructor() Y("Y was called") X("X was called") {}
}
