//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract FundMe{

    uint256 minimumUsd = 5 ; 

    function fund() public payable {
        require (msg.value >= minimumUsd , "not send enough amount");
    }
    
    function withdraw() public {}


}