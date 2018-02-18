/* Simple contract in Solidity that represents a registry of certificates. 
The contract must check whether the user that tries to add a certificate is the contract’s owner. 
If this is so the certificate is added, otherwise – no. 
The other functionality should allow a user to check whether a certain certificate is in the registry. 
INFO: https://emn178.github.io/online-tools/sha3_512.html for generating hashes */

pragma solidity ^0.4.18;

contract RegistryOfCertificates {
    mapping (string => uint) private certificateHashes;
    address contractOwner = msg.sender;
    
    function add(string hash) public {
        require(msg.sender == contractOwner);
        certificateHashes[hash] = 1;
    }
    
    function verify(string hash) view public returns(bool){
        return certificateHashes[hash] != 0;
    }
}

