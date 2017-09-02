pragma solidity ^0.4.0;

contract DumbCoin {

    address deployer;
    mapping(address => uint) balances;

    function DumbCoin() {
        deployer = msg.sender;
    }

    function giveCoins(uint amount, address receiver) {

        if (msg.sender == deployer) {
            balances[receiver] += amount;
        } else {
            throw;
        }
    }

    function viewBalance() returns(uint) {
        return balances[msg.sender];
    }
}
