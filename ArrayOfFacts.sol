/* Simple contract in Solidity that keeps in the blockchain a string array of facts. 
There must be a function that checks whether the user that tries to add new facts is authorized to do so. 
Furthermore, the contract must have two additional functions – one to return the length of the array 
and the other to return a fact that occupies a certain place in the array */

pragma solidity ^0.4.18;

contract ArrayOfFacts {
    
    string[] private facts;
    address private contractOwner = msg.sender;
    
    
    function add(string newFact) public {
        require(msg.sender == contractOwner);
        facts.push(newFact);
    }
    
    function count() view public returns(uint) {
        return facts.length;
    }
    
    function getFact(uint index) view public returns(string) {
        return facts[index];
    }
    
}