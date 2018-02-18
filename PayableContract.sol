/* 
Contract that has a function through which anyone can send it some ether. 
In addition, only the owner can check the current balance of the contract 
*/

pragma solidity ^0.4.18;

contract PayableContract {
    address private owner;
    
    function PayableContract() public payable {
        owner = msg.sender;
    }
    
    function deposit() public payable {
        
    }
    
    function getBalance() view public returns(uint) {
        require(msg.sender == owner);
        return this.balance;
    }
}