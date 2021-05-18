pragma solidity ^0.4.23;

import "../StageFactory.sol";
import "../SecondStage/VoteStageFactory.sol";
import "../../Strategy/EachStrategy/CappedStrategy.sol";

contract CappedVoteStage is VoteStageFactory{
    uint256 limitCap;
    constructor(string _name, uint256 _totalAmount,uint256 _numOfChoices) 
    StageFactory(_name,_totalAmount,_numOfChoices)
     payable public{
    }
    function createLimitStrategy() 
        internal returns (LimitStrategy) {
        
        return new CappedStrategy(10000); //Setting max limit!!
    }
}
