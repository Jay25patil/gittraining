pragma solidity ^0.4.4;

contract SmartCurrency {
    mapping (address => uint256) shares;
    mapping (address => uint256) balances;
    mapping (address => uint256) leaves;

    uint Coins;
    uint Leave;
    uint Share;
    uint Timer;
    
    function SmartCurrency(){
        balances[msg.sender]= Coins;
        leaves[msg.sender]= Leave;
        shares[msg.sender]= Share;       
    }

    
    
    function checkbalance()returns (uint){
        return (balances[msg.sender]=Coins);
    }
    
     function checkShares()returns (uint){
        return (shares[msg.sender]=Share);
    }
    
    function checkLeaves()returns (uint){
        return (leaves[msg.sender]=Leave);
    }
    
    
    function is_CoinsLow()internal returns (uint){
        
         if (balances[msg.sender] == 0 ){
            Coins+=1000;
            return Coins;
            
            }
        

    }
    function is_SharesLow()internal returns (uint){
        if (shares[msg.sender] == 0 ){
            Share+=100;
            return Share;
            
        }
        
    }    
    
    function is_LeavesLow()internal returns (uint){
        if (leaves[msg.sender] == 0 ){
            Leave+=100;
            return Leave;
        }
        
     }
    function RefreshCoins() {
        uint _duration=1 ;   
        Timer = block.timestamp + _duration* 60 seconds;
        if(block.timestamp>= 60 seconds){
           is_CoinsLow();
        } 
        }
        
        function RefreshShares() {
        //uint _duration=1 ;   
       //Timer = now + _duration* 60 seconds;
        if(now>= 60 seconds){
           is_SharesLow();
        } 
        }
        
        function RefreshLeaves() {
        //uint _duration=1 ;   
       //Timer = now + _duration* 60 seconds;
        if(now>= 60 seconds){
           is_LeavesLow();
        } 
        }
        
    
     
}
