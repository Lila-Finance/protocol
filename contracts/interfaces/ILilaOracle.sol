// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ILilaOracle {
    function getReturn(uint256 timestamp, uint256 payment_freq, uint256 amount) external view returns (uint256) ;
}

