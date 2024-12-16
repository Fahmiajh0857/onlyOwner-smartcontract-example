// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title RestrictedAccess
 * @dev This contract demonstrates how to use a modifier to restrict access to certain functions
 * so that only the owner of the contract can call them.
 */
contract RestrictedAccess {
    address public owner;
    string private sensitiveData;

    /**
     * @dev Sets the deployer as the initial owner.
     */
    constructor() {
        owner = msg.sender;
    }

    /**
     * @dev Modifier to restrict access to only the owner of the contract.
     */
    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    /**
     * @dev Allows the owner to update sensitive data.
     * @param newData The new sensitive data to store.
     */
    function updateSensitiveData(string memory newData) public onlyOwner {
        sensitiveData = newData;
    }

    /**
     * @dev Allows anyone to view the sensitive data.
     * Note: In a real-world scenario, this function might also be restricted.
     * @return The current sensitive data.
     */
    function viewSensitiveData() public view returns (string memory) {
        return sensitiveData;
    }
}
