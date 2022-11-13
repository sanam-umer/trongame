//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("TronWeeklyGame", "TWG") {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
      
    }
    address admin;
    address payable player;
    uint256 deposit;
    uint256 public TWGValue=2000000000000000;

 
  //market to buy token
  
    event BuyTokens(address buyer, uint256 amountOfTRX);

    function buyTokens() public payable returns (uint256 tokenAmount) {
    require(msg.value >0, "Send TRX to buy some tokens");
     uint256 amt = msg.value / TWGValue;
    // Transfer token to the msg.sender
    _transfer(admin, msg.sender,amt);
    
    // emit the event
    emit BuyTokens(msg.sender, msg.value);

    return amt;
  }

  //Deposit to play

  function bet(address, uint256 value) internal{
      payable(address(uint160(admin))).transfer(value);
  }

  //get prize
    
   function getPrize()public payable{
    player.transfer(4*(msg.value));
   }

}




  


    
   
    
 
    



