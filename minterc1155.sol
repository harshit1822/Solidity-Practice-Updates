// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

//import "erc20.sol";
//import "erc1155con.sol";

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";


interface Ierc1155con{
    function balanceOf(address account, uint256 id) external view returns (uint256);

    
    function balanceOfBatch(address[] calldata accounts, uint256[] calldata ids)
        external
        view
        returns (uint256[] memory);

   
    function setApprovalForAll(address operator, bool approved) external;

    function isApprovedForAll(address account, address operator) external view returns (bool);

    
    function safeTransferFrom(
        address from,
        address to,
        uint256 id,
        uint256 amount,
        bytes calldata data
    ) external;

    
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata amounts,
        bytes calldata data
    ) external;
function mint1155(address _to,  uint _amount) external;

}



interface IERC20A {
function totalSupply()  external view returns (uint256);
function balanceOf(address _owner) external view returns (uint256 balance);
function transfer(address _to, uint256 _value) external returns (bool success);
function transferFrom(address _from, address _to, uint256 _value) external returns (bool success);
function approve(address _spender, uint256 _value) external returns (bool success);
function allowance(address _owner, address _spender) external view returns (uint256 remaining);

}

contract minterc1155 is 
Ownable   {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenId;
 address address1155;
 address  address20;
 uint public  rate  = 100* 10 ** 18;
 //address  Owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
 

 function setAddresserc1155(address _address1155con, address _address20A)external{
     address1155 = _address1155con;
     address20 = _address20A;
 }


 function transferformint() public{
     //require(IERC20A(address20).balanceOf(msg.sender) >0, "ammount is not sufficient");
     IERC20A(address20).transferFrom(msg.sender, address(this), rate);
    //  uint tokenID = _tokenId.current();
    //  _tokenId.increment();
     Ierc1155con(address1155).mint1155(msg.sender, rate);

 }

 function geterc20(address _addracc, uint amount)  external returns(bool){
    
   // address20.transfer(amount);
    require(amount >0, "give some amount");
     // IERC20A(address20).transfer(amount);
      IERC20A(address20).transfer( _addracc, amount);
 }

