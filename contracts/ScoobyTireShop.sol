// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract ScoobyTires {
    address public owner;
    mapping (address => uint) public tireBalances;

    constructor() {
        owner = msg.sender;
        tireBalances[address(this)] = 100;
    }

    function getScoobyTireBalance() public view returns (uint) {
        return tireBalances[address(this)];
    }

    function restock(uint amount) public {
        require(msg.sender == owner, "Only the Scooby can restock the tires.");
        tireBalances[address(this)] += amount; 
    }

    function purchase(uint amount) public payable {
        require(msg.value >= amount * 4 ether, "You need 4 ether to purchase a tire"); 
        require(tireBalances[address(this)] >= amount, "Not enough tires in stock to fufill inquiry.");
        tireBalances[address(this)] -= amount;
        tireBalances[msg.sender] += amount;
    }
}
