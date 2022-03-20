// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "src/generateRandom.sol";

contract randomTest is DSTest{
     generateRandom generator;

     function setup() public{
     }


     function test1() public{
         generator = new generateRandom();
         // generator.generateStats();
         // string[] storage statNames = ["Health", "Attack", "Defense"];
         uint256[] memory stats =  new uint256[](3);  
         stats = generator.generateStats();
         // generator.generateStats();
         // emit log("Health :");
         // emit log_uint(uint(blockhash( stats[0])));
         assertTrue(stats[0] <=10 && stats[0]>=0);
     }


}