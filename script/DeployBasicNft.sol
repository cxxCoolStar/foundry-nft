// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^8.18;

import {BasicNft} from "../src/BasicNft.sol";
import {Script} from "forge-std/Script";

contract DeployBasicNft is Script {

    function run() external returns(BasicNft) {
        vm.startBroadcast();
        BasicNft basicNft = new BasicNft();
        vm.stopBroadcast();
        return basicNft;
    }
}