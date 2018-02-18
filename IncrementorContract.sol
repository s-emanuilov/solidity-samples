/* Simple contract in Solidity that keeps in the blockchain an integer variable 
and a public function that incrementing it */

pragma solidity ^0.4.18;

contract IncrementorContract {
    uint private valueToBeIncremented;
    
    function get() public view returns(uint) {
        return valueToBeIncremented;
    }
    
    function increment(uint delta) public {
        valueToBeIncremented += delta;
    }
    
}