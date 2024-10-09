// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {DojoToken} from "../src/DojoToken.sol";

contract CounterScript is Script {
    DojoToken public dojoToken;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        dojoToken = new DojoToken("DojoToken V2", "DOJO", 1000);

        vm.stopBroadcast();
    }
}
