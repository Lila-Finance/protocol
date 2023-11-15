// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IProxy {
    function token() external view returns (IERC20);
    function deposit(uint256 amount, uint256 tokenId) external;
    function withdraw(uint256 tokenId) external;
    function getUserToken(uint256 tokenId) external view returns (uint256);
}
