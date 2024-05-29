
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public name = "Token"; 
    string public symbol = "TKs";   
    uint public totalSupply = 0;     


    mapping(address => uint) public balance;

    
    function mint(address addr, uint amount) public {
        totalSupply += amount;       
        balance[addr] += amount;    
    }

    
    function burn(address addr, uint amount) public {
        
        if (balance[addr]>= amount){
            totalSupply -= amount;       
            balance[addr] -= amount;    

        } 
    }
}