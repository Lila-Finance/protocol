// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IProxy.sol";

interface ILilaPoolsProvider {
    struct Pool {
        IERC20 asset;
        uint256 rate_time;
        uint256 duration_between_payments;
        uint256 payouts_plus_principal_payed_out;
        uint256 deposit_amount;
        IProxy strategy;
    }

    event Withdrawal(uint amount, uint tokenID, uint when);
    event Deposit(uint amount, uint tokenID, address who, uint when);

    function deposit(uint256 amount, uint32 _open_pool_index, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;

    function withdraw(uint256 tokenID) external;

    function getOpenPools() external view returns (Pool[] memory);
}
