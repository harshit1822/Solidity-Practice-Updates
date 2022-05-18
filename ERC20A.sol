//SPDX-License-Identifier : UNLICENSED
pragma solidity ^0.8.0;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract ERC20A is ERC20{
constructor() ERC20("HARSHTOKEN", "HAR"){
 _mint(msg.sender, 1000*100**decimals());
}
}