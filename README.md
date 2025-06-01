Merkle Airdrop Contract
This repository contains a Solidity smart contract implementation for a Merkle Airdrop, along with a custom ERC20 token (BagelToken) used for the airdrop. The contracts are deployed on the Sepolia test network, enabling users to claim tokens based on a Merkle tree-based proof system.
Overview
The project consists of two main smart contracts:

BagelToken: An ERC20 token contract that supports minting and transferring tokens.
MerkleAirdrop: A contract that allows users to claim tokens by providing a valid Merkle proof, ensuring secure and efficient token distribution.

The deployment script (DeployMerkleAirdrop.s.sol) automates the deployment of both contracts to the Sepolia test network and handles token minting and transfer to the airdrop contract.
Contracts
BagelToken

Address: 0xCdf758455a9Ebbea73D85b90b8C411c509c79881
Description: A standard ERC20 token with minting functionality. During deployment, 100,000 tokens (with 18 decimals) are minted and transferred to the MerkleAirdrop contract for distribution.
Key Functions:
mint(address to, uint256 amount): Mints tokens to a specified address.
transfer(address to, uint256 amount): Transfers tokens to the airdrop contract.



MerkleAirdrop

Address: 0x32E925cA0b161ef0Cf2a5227fDa1623F2e160A15
Description: Manages the airdrop process using a Merkle tree to verify eligibility. Users can claim tokens by submitting a valid Merkle proof.
Constructor Arguments:
Merkle Root: 0xaa5d581231e596618465a56aa0f5870ba6e20785fe436d5bfb82b08662ccc7c4
Token Address: 0xCdf758455a9Ebbea73D85b90b8C411c509c79881



Deployment
The contracts have been successfully deployed on the Sepolia test network (Chain ID: 11155111). The deployment process is handled by a Foundry script (DeployMerkleAirdrop.s.sol).
Deployment Command
To deploy the contracts, run:
make deploy ARGS="--network sepolia"

Deployment Details

Block Number: 8455030
Total Gas Paid: 0.000002334085696872 ETH (2,333,976 gas at an average of 0.001000047 gwei)
Transaction Hashes:
BagelToken Deployment: 0xfab0475bb5d759672f4b9158dddb1415b35d3c4f991c796a296736fa5cb970da
MerkleAirdrop Deployment: 0xf771190757d9249ba26e3a7ede3f613c1a581568f9addfa2d78da6e0a66c4d80
Mint Transaction: 0xebbfc84ce498a549ad1f914a67158d10670b77117819e3baf828e9b4147ec537
Transfer Transaction: 0xf771190757d9249ba26e3a7ede3f613c1a581568f9addfa2d78da6e0a66c4d80



Deployment Steps

Start Broadcasting: The script begins broadcasting transactions to the Sepolia network.
Deploy BagelToken: Deploys the BagelToken contract, emitting an OwnershipTransferred event.
Deploy MerkleAirdrop: Deploys the MerkleAirdrop contract with the specified Merkle root and token address.
Mint Tokens: Mints 100,000 tokens (10^20 wei) to the deployer address.
Transfer Tokens: Transfers the minted tokens to the MerkleAirdrop contract for distribution.
Stop Broadcasting: Completes the deployment process.

Verification
The MerkleAirdrop contract has been verified on Etherscan:

Verification Status: Pass - Verified
Etherscan URL: https://sepolia.etherscan.io/address/0x32e925ca0b161ef0cf2a5227fda1623f2e160a15
Compiler Version: 0.8.28
Note: The BagelToken contract bytecode could not be verified, possibly due to changes in the source code or compiler version. Ensure the source code matches the deployed bytecode for verification.

Artifacts

Transaction Logs: Saved to /airdrop-contract/broadcast/DeployMerkleAirdrop.s.sol/11155111/run-latest.json
Sensitive Values: Saved to /airdrop-contract/cache/DeployMerkleAirdrop.s.sol/11155111/run-latest.json

Requirements

Foundry: Ensure Foundry is installed to compile and deploy the contracts.
Sepolia RPC: Configure a Sepolia RPC endpoint in your Foundry configuration.
Private Key: A valid private key with sufficient Sepolia ETH to cover gas costs (~0.000003049926257918 ETH).

Usage

Clone the Repository:git clone https://github.com/abhilov23/airdrop-contract
cd airdrop-contract


Install Dependencies:forge install


Compile Contracts:forge build


Deploy Contracts:Run the deployment command as shown above.
Claim Tokens:Users can interact with the MerkleAirdrop contract by submitting a valid Merkle proof to claim their tokens. Use a frontend or script to generate and submit proofs.

License
This project is licensed under the MIT License.
