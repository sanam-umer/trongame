
const utils = {
tronWeb:false,
contract:false,
async setTronWeb(tronWeb,contractAddress){
  console.log('TSQJmcTSd9GMvpzijxtyRN2Q7obDgGkCzt',contractAddress)
  this.tronWeb = tronWeb;
  this.contract = await tronWeb.contract().at(contractAddress)
}

}
const tronWeb = new TronWeb({
  fullHost: 'https://api.trongrid.io',
  headers: { "TRON-PRO-API-KEY": 'f7230912-42ae-4cee-a172-b8922eac5735' },
  privateKey: '58d32ecd6e97dd9e50a13c8c4564bd5008124971072a469b7a50597995f30406'
})





// // buyTokens= async() => {
// //     let amt = document.getElementById('amt').value;
// //     let trx = await MyContract.methods.buyTokens(amt).send({
// //         feeLimit:100_000_000,
// //         callValue:0,
// //       shouldPollResponse:true
// //     });
// //     alert("Transaction success");
// //     console.log(trx);
// // }

// var player;
// var bet

// Function to place bet
getNewBet = () => {$('button').click(function(){
    bet =$(this).attr('id'); 
         document.querySelector("p.Bet").innerHTML = bet;})
}

// Function to roll the dice
 roll = () =>{
    setTimeout( function () {
        var randomNumber = Math.floor(Math.random() * 6) + 1;
        console.log(randomNumber);
        document.querySelector(".img1").setAttribute("src",
            "dice" + randomNumber + ".png");
       
            if(randomNumber == bet ){
                document.querySelector("p.Bet").innerHTML = "You Won";
                alert("You Won!!")
            }else{
                document.querySelector("p.Bet").innerHTML = "You Lost";
                alert("You Lose!")
            }
    }, 2500);

}

