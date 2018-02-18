/* 
Two contracts. The first one must have three functions – one that receives ether, one that checks the current balance of the contract, 
if called by the owner, and one that transfers a specified amount of ether t a specified address. The second contract must have two functions 
– one returning the current balance of the contract and the other must be payable so that the contract can receive ether. 
*/

pragma solidity ^0.4.18;

contract FallbackExcercise {
    address private owner;
    
    modifier isOwner() {
        require(owner == msg.sender);
        _;
    }
    
    function FallbackExcercise() public payable {
        owner = msg.sender;
    }
    
    function getBalance() public isOwner view returns(uint) {
        return this.balance;
    }
    
    function tranfer(address addr, uint amount) public isOwner {
        assert(amount <= this.balance);
        addr.transfer(amount);
    }
    
    function deposit() public payable {
        
    }
}

contract RecipientContract {
    address private owner;
    
    modifier isOwner() {
        require(owner == msg.sender);
        _;
    }
    
    function RecipientContract() public payable{
        owner = msg.sender;
    }
    
    function () public payable {
        
    }
    
    function getBalance() public isOwner view returns(uint) {
        return this.balance;
    }
}