// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

contract generateRandom{
    uint256 maxStatValue = 100;
    uint256 maxHealth = 100;
    address public owner;


    constructor (){
        owner = msg.sender;
    }



    function generateStats() public view returns(uint256[] memory){
    // generate psuedo-randomHash
        uint256 randomHash = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))); //token id
        
        // build an array of predefined length
        uint256[] memory stats = new uint256[](3);
        
        // iterate over the number of stats we want a random number for
        for(uint256 i; i < 3; i++){
            // use random number to get number between 0 and maxStatValue
            stats[i] = randomHash % maxStatValue;
            
            // byte shift randomHash to the right 8 bytes - can be fewer
            randomHash >>= 8;
        }
        
        return stats;
    }

}