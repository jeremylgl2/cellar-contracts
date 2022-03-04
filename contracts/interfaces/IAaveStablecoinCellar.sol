// SPDX-License-Identifier: Apache-2.0

pragma solidity 0.8.11;

/// @title interface for AaveStablecoinCellar
interface IAaveStablecoinCellar {
    /**
     * @notice Emitted when liquidity is increased for cellar
     * @param inputToken the address of the token
     * @param user the address of the user
     * @param amount the amount of the token
     * @param timestamp the timestamp of the action
     **/
    event AddedLiquidity(
        address indexed inputToken,
        address user,
        uint256 amount,
        uint256 timestamp
    );

    /**
     * @notice Emitted when tokens swapped
     * @param tokenIn the address of the tokenIn
     * @param amountIn the amount of the tokenIn
     * @param tokenOut the address of the tokenOut
     * @param amountOut the amount of the tokenOut
     * @param timestamp the timestamp of the action
     **/
    event Swapped(
        address indexed tokenIn,
        uint256 amountIn,
        address tokenOut,
        uint256 amountOut,
        uint256 timestamp
    );

    /**
     * @dev emitted on deposit to Aave
     * @param token the address of the token
     * @param tokenAmount the amount to be deposited
     * @param timestamp the timestamp of the action
     **/
    event DepositeToAave(
        address indexed token,
        uint256 tokenAmount,
        uint256 timestamp
    );

    /**
     * @dev emitted on redeem from Aave
     * @param token the address of the token
     * @param tokenAmount the amount to be redeemed
     * @param timestamp the timestamp of the action
     **/
    event RedeemFromAave(
        address indexed token,
        uint256 tokenAmount,
        uint256 timestamp
    );

    error NonSupportedToken();
    error PathIsTooShort();
    error UserNotHaveEnoughBalance();
    error TokenAlreadyInitialized();
    error ZeroAmount();

    error TokenIsNotSupportedByAave();
    error NotEnoughTokenLiquidity();
    error InsufficientAaveDepositBalance();

    error NonPermission();
    error Reentrance();
    error InvalidInput();
    error TransferToZeroAddress();
    error TransferFromZeroAddress();
    error MintToZeroAddress();
    error BurnFromZeroAddress();
    error ApproveToZeroAddress();
    error ApproveFromZeroAddress();
}