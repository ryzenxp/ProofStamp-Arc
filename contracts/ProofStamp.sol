// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ProofStamp {
    struct Record {
        address owner;
        uint256 timestamp;
    }

    mapping(bytes32 => Record) public records;

    event DocumentRegistered(bytes32 indexed hash,address indexed owner,uint256 timestamp);

    function registerDocument(bytes32 hash) external {
        require(records[hash].timestamp == 0, "Already exists");
        records[hash] = Record({owner: msg.sender,timestamp: block.timestamp});
        emit DocumentRegistered(hash,msg.sender,block.timestamp);
    }

    function verifyDocument(bytes32 hash)
        external view
        returns (bool exists,address owner,uint256 timestamp)
    {
        Record memory record = records[hash];
        if(record.timestamp == 0){ return (false,address(0),0); }
        return (true,record.owner,record.timestamp);
    }
}
