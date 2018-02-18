/*
Contract for an auction, which continues for 1 block after contract's creation. 
At creation time an initial supply of tokens must be allocated to the owner`s address
*/

pragma solidity ^0.4.18;

contract SimpleBlockTimedAuction {
    mapping(address => uint) public tokenBalances;
    uint private duration = block.number + 1;
    uint private start;
    address private owner;

    function SimpleBlockTimedAuction(uint _initialSupply) public {
        start = now;
        owner = msg.sender;
        tokenBalances[owner] = _initialSupply;
    }

    function buyTokens(uint amount) public {
        assert(now <= start + duration);
        assert(amount <= tokenBalances[owner]);
        tokenBalances[msg.sender] += amount;
        tokenBalances[owner] -= amount;
    }
}