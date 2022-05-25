pragma solidity ^0.8.4;
//import "@openzeppelin/contracts/access/Ownable.sol";
//import "@openzeppelin/contracts/utils/Counters.sol";

interface IERC20A{
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}


contract store {
    // using Counters for Counters.Counter;
    // Counters.Counter private _tokenIdCounter;
    address token20;
    IERC20A obj;
    uint sum;
    constructor(){

    }

    
    
    function setAdress(address _token20) public {
        token20 = _token20;

       IERC20A obj = IERC20A(_token20);
    }
   
        
    function transferandstore(address addr,address conaddr, uint amount) external returns(uint) {

    obj.transferFrom(addr, conaddr, amount);
   sum = obj.balanceOf(address(this));
    
    return sum;
    }


    function contractbalance() public returns(uint){

        return sum;
    }




}