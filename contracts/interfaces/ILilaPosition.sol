// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/interfaces/IERC2981.sol";
import "./ILilaPoolsProvider.sol";

interface ILilaPosition is IERC721, IERC2981 {
    function getUserNFTs(address user) external view returns (uint256[] memory);
    function getPool(uint256 tokenId) external view returns (ILilaPoolsProvider.Pool memory);
    function mint(address to, ILilaPoolsProvider.Pool memory data) external returns (uint256);
    function transferOwnership(address newOwner) external;
}
