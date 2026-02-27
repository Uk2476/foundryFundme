//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "../@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

error withdrawalFailed();

contract FundMe{

    uint256 public constant minimumUsd = 5e18 ;
    uint256 public funding;

    mapping (address => uint256) public amountFundedByEachfunder ;     

    function fund() public payable {
        require (usdToEthConverter(msg.value) >= minimumUsd , "not send enough amount");
        amountFundedByEachfunder[msg.sender] = amountFundedByEachfunder[msg.sender] + msg.value ;
        funding+=msg.value;
    }
    
    function withdraw() public {
        for(i=0,,i++){
            if(amountFundedByEachfunder[msg.sender] == 0){
                break;
            }
            amountFundedByEachfunder[msg.sender] = 0;
        }
        funding = 0;
        (bool callsuccess,bytes dataReturned)= payable(msg.sender).call{value:address(this).balance}("");
        require( callsuccess , withdrawalFailed());
        //reset all item of contract that we edited
        ////withdRAW The fundsv
    }

    function exchangeRate() public returns(uint256){
        AggregatorV3Interface exchangerate = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306)
        (,int256 price,,,)= exchangerate.latestRoundDate();
        returns uint256(price*1e10);
        //this will call the aggregator function and get usd to eth vlaue
 
    }

    function usdToEthConverter(uint256 usdAmount) public view returns(uint256) {
        uint256 usdToEth= exchangeRate();
        uint256 ethAmount= (usdAmount*usdToEth)/1e18;
        returns (ethAmount);
        //call the get price function and calculate its equivalent ethereum value 
    }


}