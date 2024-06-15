// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

contract exp {
    bool public bvar;
    uint public uivar;
    int public ivar;
    address public addvar;
    bytes   public byvar;
    string public stvar;
    uint[] public arvar;

    function updatevar() public {
        bvar=true;
        uivar=123;
        ivar=-12;
        addvar=msg.sender;
        byvar=hex"1233";
        stvar="blank";
        arvar=[1,2,3,4,5];

    }

}

// task 2

// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

contract exp {

    function exp1(uint age, uint salary) public pure returns (uint) {
        
        if (age > 30) {
            return salary + 25000;
        }
        else if (age > 20) {
            return salary + 3000;
        }
        else if (age > 18) {
            return salary + 2000;
        }
        else {
            return salary;
        }
    }

}

// task 3

contract loop{
    uint[] public numbers;
    uint public sum;
    uint public  dosum;

    function initial( uint count) public{
        for(uint i=0; i<count; i++){
            numbers.push(i);
        }
    }

    function sumwhile() public {
        uint i=0;
        sum = 0;
        while( i<numbers.length){
            sum+=numbers[i];
            i++;
        }
    }

    function sumdo() public view returns (uint) {
        uint i=0;
        uint dosum = 1;
        if(numbers.length>0){
            do{
                dosum*=numbers[i]+1;
                i++;
            }
            while(i<numbers.length);
        }
        return dosum;
    }
}

// task 4

contract array {

    uint [5] fixedsizearray;
    function populatearray () public {
        for (uint i=0; i<5; i++){
            fixedsizearray [i] =i+1;
        }
    }
    function getarray() public view returns (uint [5] memory){
        return fixedsizearray;
    }
    uint[] dynamic;
    function add(uint value) public {
        dynamic.push(value);
    }
    function get() public view returns (uint[] memory) {
        return dynamic;
    }
    function populate () public {
        dynamic.pop();
    }
}

// task 5

contract Ledger {
    mapping (address => uint) public balances;
    function updateBalance (uint newbalance) public {
        balances[msg.sender] = newbalance;
    }

}

contract Updater{
    function updatebalance() public returns(uint){
        Ledger ledgerbalance = new Ledger();
        ledgerbalance.updateBalance(10);
        return ledgerbalance.balances(address(this));
    }
}
