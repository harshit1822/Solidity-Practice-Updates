//SPDX-License-Identifier:ow-stack-traces UNLICENSED
pragma solidity >= 0.5.0 < 0.9.0;


contract token {

    string public name="Hardhat Token";
    string public symbol = "HHT";
    uint public totalsupply = 1000;
    address public owner;

    mapping(address=>uint)balances;


    constructor(){
        balances[msg.sender]=totalsupply;
        owner = msg.sender;

    }


    function transfer(address to, uint amount) external {
        require(balances[msg.sender]>=amount , "not enough tokens");


        balances[msg.sender]-=amount;
        balances[to]+=amount;
    }


    function balanceof(address account )external view returns(uint){
        return balances[account];
    }
}