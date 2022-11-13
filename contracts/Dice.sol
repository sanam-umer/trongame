//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;


import './Token.sol';

contract Dice is Token{
    struct Game{
      uint256 bet;
      bool valid; //false when no bet is set 
    }
    uint256 public repeats;
    mapping(address => Game)public Games;// points details of game played by address

    event gameSet(address player,uint256 bet,bool valid);
    event newGame(uint256 repeats);

   function PlayDice()public payable{
    require(msg.value>0,'Place bet');
    bet(msg.sender,msg.value);

    Game memory game = Game(msg.value,true);
    Games[player] = game;
    emit newGame(repeats++);
    emit gameSet(msg.sender,
      msg.value,
      true
     );
    }

    

}