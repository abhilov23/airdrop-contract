# Merkle Airdrop Contract

![GitHub](https://img.shields.io/github/license/<your-username>/<your-repo>?style=flat-square)
![Solidity](https://img.shields.io/badge/Solidity-0.8.28-blue?style=flat-square)
![Network](https://img.shields.io/badge/Network-Sepolia-orange?style=flat-square)

This repository contains a Solidity smart contract implementation for a Merkle Airdrop, paired with a custom ERC20 token (`BagelToken`) for token distribution. The contracts are deployed on the **Sepolia test network**, enabling secure and efficient token airdrops using a Merkle tree-based proof system.

## Table of Contents
- [Overview](#overview)
- [Contracts](#contracts)
  - [BagelToken](#bageltoken)
  - [MerkleAirdrop](#merkleairdrop)
- [Deployment](#deployment)
  - [Deployment Command](#deployment-command)
  - [Deployment Details](#deployment-details)
  - [Verification](#verification)
- [Setup and Usage](#setup-and-usage)
- [License](#license)

## Overview

This project facilitates a token airdrop using two smart contracts:
- **BagelToken**: A standard ERC20 token with minting and transfer capabilities.
- **MerkleAirdrop**: A contract that allows eligible users to claim tokens by providing a valid Merkle proof.

The deployment is automated via a Foundry script (`DeployMerkleAirdrop.s.sol`), which deploys both contracts, mints tokens, and transfers them to the airdrop contract.

## Contracts

### BagelToken
- **Address**: `0xCdf758455a9Ebbea73D85b90b8C411c509c79881`
- **Description**: An ERC20 token contract that supports minting and transferring tokens. During deployment, 100,000 tokens (10^20 wei) are minted and transferred to the `MerkleAirdrop` contract.
- **Key Functions**:
  - `mint(address to, uint256 amount)`: Mints tokens to a specified address.
  - `transfer(address to, uint256 amount)`: Transfers tokens to the airdrop contract.

### MerkleAirdrop
- **Address**: `0x32E925cA0b161ef0Cf2a5227fDa1623F2e160A15`
- **Description**: Manages the airdrop process, allowing users to claim tokens by submitting a valid Merkle proof.
- **Constructor Arguments**:
  - Merkle Root: `0xaa5d581231e596618465a56aa0f5870ba6e20785fe436d5bfb82b08662ccc7c4`
  - Token Address: `0xCdf758455a9Ebbea73D85b90b8C411c509c79881`

## Deployment

The contracts are deployed on the **Sepolia test network** (Chain ID: 11155111) using a Foundry script.

### Deployment Command
To deploy the contracts, run:
```bash
make deploy ARGS="--network sepolia"
```

## 📦 Deployment Details

- **Block Number:** `8455030`
- **Total Gas Paid:** `0.000002334085696872 ETH`  
  (`2,333,976` gas at ~`0.001000047 gwei`)

---

### 🔗 Transaction Hashes

- **BagelToken Deployment:**  
  [`0xfab0475bb5d759672f4b9158dddb1415b35d3c4f991c796a296736fa5cb970da`](https://sepolia.etherscan.io/tx/0xfab0475bb5d759672f4b9158dddb1415b35d3c4f991c796a296736fa5cb970da)

- **MerkleAirdrop Deployment:**  
  [`0xf771190757d9249ba26e3a7ede3f613c1a581568f9addfa2d78da6e0a66c4d80`](https://sepolia.etherscan.io/tx/0xf771190757d9249ba26e3a7ede3f613c1a581568f9addfa2d78da6e0a66c4d80)

- **Mint Transaction:**  
  [`0xebbfc84ce498a549ad1f914a67158d10670b77117819e3baf828e9b4147ec537`](https://sepolia.etherscan.io/tx/0xebbfc84ce498a549ad1f914a67158d10670b77117819e3baf828e9b4147ec537)

- **Transfer Transaction:**  
  [`0xf771190757d9249ba26e3a7ede3f613c1a581568f9addfa2d78da6e0a66c4d80`](https://sepolia.etherscan.io/tx/0xf771190757d9249ba26e3a7ede3f613c1a581568f9addfa2d78da6e0a66c4d80)

---

### ⚙️ Deployment Steps

1. Deploy `BagelToken` contract  
2. Deploy `MerkleAirdrop` contract with Merkle root and token address  
3. Mint `100,000` tokens to the deployer  
4. Transfer tokens to the `MerkleAirdrop` contract

---

## ✅ Verification Status

### 🔘 MerkleAirdrop

- **Status:** Verified on Etherscan  
- **URL:** [0x32e925ca0b161ef0cf2a5227fda1623f2e160a15](https://sepolia.etherscan.io/address/0x32e925ca0b161ef0cf2a5227fda1623f2e160a15)  
- **Compiler Version:** `0.8.28`

### 🔴 BagelToken

- **Status:** Verification Failed  
- **Reason:** Possibly due to source code or compiler version mismatch.  
  Ensure deployed bytecode matches the source code for successful verification.


