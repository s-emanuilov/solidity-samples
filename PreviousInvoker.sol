/* Simple contract in Solidity that keeps the address of the previous invoker of the contract */

pragma solidity ^0.4.18;

contract PreviousInvoker {
    
    address private prevInvoker;
    
    function getPreviousInvoker() public returns(bool, address) {
        address result = prevInvoker;
        prevInvoker = msg.sender;
        return(result != 0x0, result);
    }
    
}