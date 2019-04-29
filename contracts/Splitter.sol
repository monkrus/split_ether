pragma solidity ^0.5.0;

import {Toggled} from "./Toggled.sol";  // Toggled is Owned

contract Splitter is Toggled {

    // keep/save balance for B and C 'key':'value'
    // address: recipient
    // uint: amount
    mapping(address => uint) private balances;

    // When A sends Eth - tokens to B and C, it splits 50/50
    // Sample event definition: use 'event' keyword and define the parameters
    event LogEthSplitted(
        address indexed from, // msg.sender is sending - 100 ETH
        address indexed Bob, // recipient B is getting - 50 ETH
        address indexed Alice, // recipient C is getting - 50 ETH
        uint initialAmount // total amount = 100 ETH
    );

    // Withdrawal Eth
    event LogEthWithdrawal(
        address indexed to, // send Eth to B,C
        uint amount // total amount = 100 Eth
    );

    function splitEth(address Bob, address Alice) public payable isActive {
        require(Bob != address(0), "Address of 'Bob' cannot be empty");
        // Check if address of Bob is NOT empty
        require(Alice != address(0), "Address of 'Alice' cannot be empty");
        // Check if address of Alice is NOT empty
        require(msg.value != 0, "Message value cannot be 0");
        // compare money of owner which was sent
        require((msg.value % 2) == 0, "Message value must be even");
        // Check if our amount can be split in two the same parts
        uint amount = msg.value / 2;
        // Divide amount on 2 parts
        balances[Bob] += amount;
        // Check how much money Bob has right now = 0[Bob]=50+50
        balances[Alice] += amount;
        // 0[Alice]=50+50
        emit LogEthSplitted(msg.sender, Bob, Alice, msg.value);
        // log data
        // emit LogEthSplitted(from, Bob, Alice, initialAmount); // emit получатель
    }

    // 3 states 1:money in contract, 2:money in msg.sender, 3:send money to B,C
    function withdraw() public {
        // Owned has balance = amount from contract 'initialAmount'
        uint amount = balances[msg.sender];
        // Force to zero the balance before transfer to avoid re-entrance vulnerability
        balances[msg.sender] = 0;
        // if (amount > 0) then go next line
        require(amount > 0, "No balance available");
        // error message 'No balance available' if the amount = 0
        // Transfer money to B,C
        msg.sender.transfer(amount);
        // msg.sender created of contract
        // Call the event that will fire at browser (client-side)
        emit LogEthWithdrawal(msg.sender, amount);
    }

    function() external {
        revert();
    }

}
