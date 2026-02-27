//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe{

    uint256 minimumUsd = 5e18 ;
    //we have to convert this into eth so that our code is able to understand that 

    function fund() public payable {
        require (msg.value >= minimumUsd , "not send enough amount");
    }
    
    function withdraw() public {}

    // get the current rate between usd and eth
    function getPrice() public returns(uint256){
        //contract address : 0x694AA1769357215DE4FAC081bf1f309aDC325306
        //this will call the aggregator function and get usd to eth vlaue
 
    }

    //convert amount of usd into eth 
    function priceConverter() public {
        //this will call the get price function and calculate its equivalent ethereum value 
    }


}