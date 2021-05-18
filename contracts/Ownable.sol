pragma solidity ^0.4.23;
pragma experimental ABIEncoderV2;

/* 추가하면 좋을점 unlimited limited 로 나누어서 진행할수 있게 추가
그리고 아직 너무 중복되는 함수가 많고 깔끔하지 않음 */
contract Ownable {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}