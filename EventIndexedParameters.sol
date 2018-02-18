/*
Event with multiple parameters that are going to be indexed
*/

pragma solidity ^0.4.18;

contract EventIndexedParameters {

    address owner;

    event LogInformation(string indexed name, string indexed email);

    function EventIndexed() public {
        owner = msg.sender;
    }

    function showInformation(string name, string email) public {
        LogInformation(name, email);
    }

}