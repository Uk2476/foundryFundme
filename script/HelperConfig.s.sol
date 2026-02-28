//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {FundMe} from "src/FundMe.sol" ;
import {Script} from "forge-std/Script.sol";

contract HelperConfig is Script {

    address public networkUsed;

    constructor () {
        if (block.chainId == 11155111){
            networkUsed = sepoliaId();
        } /*else {
            networkUsed = anvilId();
        }8*/
    }

    function sepoliaId() public pure returns(address){
        return 0x694AA1769357215DE4FAC081bf1f309aDC325306 ;
    }

/*    function anvilId() public pure returns(address) {

    }*/
}




