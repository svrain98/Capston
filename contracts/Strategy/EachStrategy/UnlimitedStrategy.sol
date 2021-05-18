pragma solidity ^0.4.24;

import "../LimitStrategy.sol";
contract UnlimitedStrategy is LimitStrategy {
    function isFullInvestmentWithinLimit(uint256 _investment, 
        uint256 _fullInvestmentReceived) 
        public view returns (bool) {
        return true;
    }
}