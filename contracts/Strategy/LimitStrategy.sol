pragma solidity ^0.4.23;

contract LimitStrategy{
    function isFullInvestmentWithinLimit(uint256 _investment, 
        uint256 _fullInvestmentReceived)     
        public view returns (bool);
}
