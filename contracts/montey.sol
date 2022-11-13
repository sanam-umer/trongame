//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;


import './Token.sol';

contract Montey is Token{
    
    struct Mgame{
        uint256 doorNo;
        bool Switch;
    }
    uint public repeats;
    mapping(address => Mgame)public GameDetails;

    event playLog(address player,uint256 doorNo,bool Switch);
    event newGame(uint repeats);

   function selectDoor(address,uint256 doorNo,bool Switch)public payable returns(bool success){
   require(msg.value >0 ,'Please deposit correct value');
   bet(msg.sender,msg.value);
   Mgame memory game = Mgame(doorNo,Switch);
   GameDetails[player] = game;
   emit newGame(repeats++);
   emit playLog((msg.sender),doorNo, Switch);
   return true;
   }

}
