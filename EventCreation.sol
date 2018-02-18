/*
Contract in Solidity that has a function that fires an event. 
It should show the address of the contract’s owner. 
*/

pragma solidity ^0.4.18;

contract EventCreation {
    address owner;

    event LogOwner(address indexed owner);

    function EventCreation() public {
        owner = msg.sender;
    }

    function showAddress() public {
        LogOwner(owner);
    }

}