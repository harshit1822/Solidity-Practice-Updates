// SPDX-License-Identifier: MIT



pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract erc1155con is ERC1155  {
    
  string public name;
  string public symbol;

  mapping(uint => string) public tokenURI;

  constructor() ERC1155("") {
     name = "Harshitems";
     symbol = "HASH";
  }
  
  function mint1155(address _to,  uint _amount) external  {
    _mint(_to, 1, _amount, "HAR");
  }








