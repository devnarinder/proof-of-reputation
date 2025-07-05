// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title Proof of Reputation (PoR) - On-Chain Reputation System
/// @author Narinder Sharma | Blocryp
/// @notice A simple reputation tracking contract for Web3 fintech applications
/// @dev Designed as a POC for managing reputation scores on Ethereum-compatible chains

contract ProofOfReputation {
    // Owner address who controls reputation updates
    address public owner;

    // Reputation scores mapping for user addresses
    mapping(address => uint256) private reputations;

    // Events emitted on reputation changes
    event ReputationIncreased(address indexed user, uint256 amount, uint256 newScore);
    event ReputationDecreased(address indexed user, uint256 amount, uint256 newScore);
    event ReputationReset(address indexed user);

    // Only owner can call functions with this modifier
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    // Contract constructor sets deployer as owner
    constructor() {
        owner = msg.sender;
    }

    /// @notice Increase reputation score for a user
    /// @param user Address whose reputation will increase
    /// @param amount The amount to increase reputation by
    function increaseReputation(address user, uint256 amount) external onlyOwner {
        require(user != address(0), "Invalid address");
        reputations[user] += amount;
        emit ReputationIncreased(user, amount, reputations[user]);
    }

    /// @notice Decrease reputation score for a user
    /// @param user Address whose reputation will decrease
    /// @param amount The amount to decrease reputation by
    function decreaseReputation(address user, uint256 amount) external onlyOwner {
        require(user != address(0), "Invalid address");
        uint256 current = reputations[user];
        if (amount > current) {
            reputations[user] = 0;
        } else {
            reputations[user] = current - amount;
        }
        emit ReputationDecreased(user, amount, reputations[user]);
    }

    /// @notice Reset reputation score for a user
    /// @param user Address whose reputation will reset to zero
    function resetReputation(address user) external onlyOwner {
        require(user != address(0), "Invalid address");
        reputations[user] = 0;
        emit ReputationReset(user);
    }

    /// @notice Get current reputation score of a user
    /// @param user Address to query reputation for
    /// @return Reputation score as uint256
    function getReputation(address user) external view returns (uint256) {
        return reputations[user];
    }
}
