/*
Contract in Solidity that contains a function that receives a string and an address. 
An event must be used that shows the values of these two variables
*/

pragma solidity ^0.4.18;

contract EventMultipleParameters {

    address owner;

    event LogInformation(string greeting, address owner);

    function EventMultipleParameters() public {
        owner = msg.sender;
    }

    function showInformation(string greeting) public {
        LogInformation(greeting, owner);
    }

}