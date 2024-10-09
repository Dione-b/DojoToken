// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {DojoToken} from "../src/DojoToken.sol";

contract DojoTokenTest is Test {
    DojoToken public dojoToken;

    function setUp() public {
        dojoToken = new DojoToken("DojoToken V2", "DOJO", 1000);
    }

    function teste_instance_contract() public view {
        assertEq(dojoToken.name(), "dojoToken");
        assertEq(dojoToken.symbol(), "DOJO");
    }
}
