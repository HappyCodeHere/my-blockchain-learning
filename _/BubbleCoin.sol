pragma solidity ^0.4.0;

contract BubbleCoin {

    mapping(address => uint) balances;
    uint supply;

    //ERC 20

    function totalSupply() constant returns (uint totalSupply) {
        return supply;
    }

    function balanceOf(address _owner) constant returns (uint balance) {
        return balances[_owner];
    }

    function transfer(address _to, uint _value) returns (bool success) {

        if(balances[msg.sender] >= _value && _value > 0) {
            balances[msg.sender] -= _value;
            balances[_to] += _value;

            return true;
        } else {
            return false;
        }

    }


    //our own

    function mint(uint numberOfCoins) {
        balances[msg.sender] += numberOfCoins;
        supply += numberOfCoins;
    }

    function getMyBalance() returns (uint) {
        return balances[msg.sender];
    }

}
