# Deployment Guide for Proof of Reputation Smart Contract

## Prerequisites

- Node.js >= 16.x  
- Hardhat or Truffle Framework  
- Ethereum wallet with testnet/mainnet funds

## Steps

1. Clone the repo  
2. Install dependencies: `npm install`  
3. Configure deployment parameters in `hardhat.config.js`  
4. Deploy contract: `npx hardhat run scripts/deploy.js --network <network>`  
5. Verify deployment with transaction hash or block explorer  
6. Initialize reputation parameters as per [protocol specification](whitepaper.md)

## Notes

- Supports Ethereum mainnet and compatible testnets (Ropsten, Goerli)  
- Gas optimization techniques implemented

---

© 2025 Blocryp | [blocryp.com](https://blocryp.com)
