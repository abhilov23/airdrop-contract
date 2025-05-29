//SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract MarkelAirdrop{
    //some lists of addresses
    //allow someone in the list to claim ERC-20 tokens

    address[] claimers;
    bytes32 private immutable i_markleRoot;
    IERC20 private immutable i_airdropToken;

    constructor(bytes32 markleRoot, IERC20 airdropToken){
         i_markleRoot = markleRoot;
         i_airdropToken = airdropToken;
    }

    function claim(address account, uint256 amount, bytes32[] calldata markleProof) external {
        // calculated using the account and the amount, the hash => leaf node
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(account, amount))));
    }
}