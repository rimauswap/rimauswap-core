pragma solidity =0.5.16;

import './RimauPair.sol';

contract CalculateHash {
    function getInitHash() public pure returns(bytes32){
        bytes memory bytecode = type(RimauPair).creationCode;
        return keccak256(abi.encodePacked(bytecode));
    }
}