pragma solidity ^0.4.18;

contract DocumentRegistry {
    mapping (string=>uint256) documents;
    address owner;
    
    function DocumentRegistry() public {
        owner = msg.sender;
    }
    
    function add(string hash) public returns(uint256 dataAdded) {
        require(msg.sender == owner);
        dataAdded = block.timestamp;
        documents[hash] = dataAdded;
    }
    
    function verify(string hash) view public returns(uint256 dataAdded) {
        return documents[hash];
    }
    
}