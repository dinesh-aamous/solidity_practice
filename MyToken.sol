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