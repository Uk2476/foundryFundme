//SPDX-License-Identfier:MIT
pragma solidity ^0.8.18;

import {FundMe} from "../src/FundMe.sol";
import {Script} from "forge-std/Script.so";

contract DeployFundMe is Script {
    Fundme fundMe ;

    function run() external returns(FundMe){
        vm.startBroadcast();
        fundMe = new Fundme;
        vm.stopBroadcast();

        return (fundMe);
    }
}