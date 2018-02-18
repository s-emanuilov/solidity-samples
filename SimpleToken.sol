/* Contract in Solidity that represents a simple token. 
The initial supply must be set at contract’s creation and this amount must be allocated to the address that creates the contract. 
Add a functionality that allows for transfers of tokens between the address of the contract’s creator and other addresses. */

pragma solidity ^0.4.18;

contract SimpleToken {
    mapping (address => uint) balanceOf;
    
    function SimpleToken(uint initialSupply) public {
        balanceOf[msg.sender] = initialSupply;
    }
    
    function getBalance(address _owner) public constant returns (uint balance) {
        return balanceOf[_owner];
    }
    
    function transfer(address to, uint value) public {
        require(balanceOf[msg.sender] >= value);
        require(balanceOf[to] + value >= balanceOf[to]);
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
    }
    
}