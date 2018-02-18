/* Simple contract in Solidity that keeps track of users’ names, addresses and e-mails. 
The contract must check whether the user that tries to get users’ information is the contract’s owner – 
other users must not be able to consult the records. 
The contract should provide functionality that allows to anyone to add their address’ information */

pragma solidity ^0.4.18;

contract StructProblem {
    
    address private owner;
    
    struct Account {
        string name;
        address addr;
        string email;
    }
    
    Account[] accounts;
    
    modifier isOwner() {
        require(msg.sender == owner);
        _;
    }
    
    modifier isProperUser(address addr) {
        require(msg.sender == addr);
        _;
    }
    
    function StructProblem() public {
        owner = msg.sender;
    }
    
    function create(string name, address addr, string email) isProperUser(addr) public {
        Account memory currentAccount;
        currentAccount.name = name;
        currentAccount.addr = addr;
        currentAccount.email = email;
        accounts.push(currentAccount);
    }
    
    function get(uint index) isOwner view public returns(string, address, string) {
        Account memory currentAccount = accounts[index];
        return(currentAccount.name, currentAccount.addr, currentAccount.email);
    }
}