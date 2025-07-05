# Testing Instructions for Proof of Reputation Contract

## Overview

Testing ensures the correctness and security of the PoR smart contract. Both automated unit tests and manual testing protocols are included.

## Automated Testing

- Run `npm run test` to execute all unit and integration tests  
- Tests cover reputation calculation, edge cases, and failure scenarios  
- Test framework: Mocha + Chai + Hardhat

## Manual Testing

- Deploy contract on a local Hardhat or Ganache network  
- Use provided scripts to simulate reputation events and verify state changes  
- Check event logs and emitted data for accuracy

## Best Practices

- Review code coverage reports regularly  
- Perform security audits before mainnet deployment  
- Monitor gas consumption and optimize

---

© 2025 Blocryp | [blocryp.com](https://blocryp.com)
