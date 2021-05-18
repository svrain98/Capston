pragma solidity ^0.4.23;
import "../LimitStrategy.sol";

contract CappedStrategy is LimitStrategy {
    uint256 limitCap;

    constructor(uint256 _limitCap) public {
        require(_limitCap > 0);
        limitCap = _limitCap;
    }

    function isFullInvestmentWithinLimit(uint256 _investment, 
        uint256 _fullInvestmentReceived) 
        public view returns (bool) {
        
        bool check = _fullInvestmentReceived + _investment < limitCap; 
        return check;
    }
}