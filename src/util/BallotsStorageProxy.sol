// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "./../BallotsStorage.sol";

contract BallotsStorageProxy is BallotsStorage {
    function BallotsStorageProxy() public BallotsStorage() {
        owner = 0x338a7867A35367D120011B2DA1D8E2a8A60B9bC0;
    }
}
