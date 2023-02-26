//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
contract Transactions{
    uint256 transactioncounter;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions; // array of transactions

    function addtoblockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        //main part 
        transactioncounter+=1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
 
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }
    function getallTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }
    function getTransactionCount() public  view returns (uint256){
        return transactioncounter;
    }
}