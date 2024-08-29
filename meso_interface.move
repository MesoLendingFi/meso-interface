module meso::meso {
    use aptos_framework::coin::Coin;
    use aptos_framework::fungible_asset::{FungibleAsset, Metadata};
    use aptos_framework::object::Object;
    use aptos_std::simple_map::{SimpleMap};
    use meso::lending_pool::{LendingPool, FlashLoanReceipt};
    use std::string::String;

    const MAX_U64: u64 = 18446744073709551615;
    const EMODE_NULL: vector<u8> = b"";
    /// EMode specified is invalid
    const EINVALID_EMODE: u64 = 1;
    /// Action cannot proceed as the protocol has been temporarily paused
    const EPROTOCOL_PAUSED: u64 = 2;
    /// Caller is not authorized
    const ENOT_AUTHORIZED: u64 = 3;
    /// Token is not a native fungible asset
    const ENOT_NATIVE_FA: u64 = 4;
    /// Module already initialized
    const EALREADY_INITIALIZED: u64 = 5;
    /// Amount must be greater than 0
    const EINVALID_AMOUNT: u64 = 6;
    /// Can't change the emode id of a pool that has an emode enabled
    const EINVALID_EMODE_CHANGE: u64 = 7;

     

    #[view]
    public fun get_pool(token: String): Object<LendingPool>   {
       abort 0
    }

    #[view]
    public fun get_token(pool: Object<LendingPool>): String {
        abort 0
    }

    #[view]
    public fun pools(): SimpleMap<String, Object<LendingPool>>  {
        abort 0
    }

    #[view]
    public fun asset_amounts(user: address): SimpleMap<String, u128> {
        abort 0
    }

    #[view]
    public fun asset_values(user: address): SimpleMap<String, u128> {
        abort 0
    }

    #[view]
    public fun emode_keys(): vector<String>  {
        abort 0
    }

    public entry fun enable_emode(user: &signer, emode_id: String)  {
        abort 0
    }

    public entry fun disable_emode(user: &signer)  {
        abort 0
    }

    public entry fun deposit_coin<CoinType>(user: &signer, amount: u64)  {
        abort 0
    }

    public entry fun deposit(user: &signer, token: Object<Metadata>, amount: u64)  {
        abort 0
    }

    public entry fun withdraw_coin<CoinType>(user: &signer, amount: u64)  {
        abort 0
    }

    public entry fun withdraw(user: &signer, token: Object<Metadata>, amount: u64)  {
        abort 0
    }

    public entry fun borrow_coin<CoinType>(user: &signer, amount: u64)  {
        abort 0
    }

    public entry fun borrow(user: &signer, token: Object<Metadata>, amount: u64)  {
        abort 0
    }

    public entry fun repay_coin<CoinType>(user: &signer, amount: u64)  {
        abort 0
    }

    public entry fun repay(user: &signer, token: Object<Metadata>, amount: u64)  {
        abort 0
    }

    public entry fun liquidate_both_coins<BorrowType, SupplyType>(
        liquidator: &signer,
        borrower: address,
        repayment_amount: u64,
        min_amount_received: u128,
    )  {
        abort 0
    }

    public entry fun liquidate_coin_borrow<BorrowType>(
        liquidator: &signer,
        supply_token: Object<Metadata>,
        borrower: address,
        repayment_amount: u64,
        min_amount_received: u128,
    )  {
        abort 0
    }

    public entry fun liquidate_coin_supply<SupplyType>(
        liquidator: &signer,
        borrow_token: Object<Metadata>,
        borrower: address,
        repayment_amount: u64,
        min_amount_received: u128,
    )  {
        abort 0
    }

    public entry fun liquidate(
        liquidator: &signer,
        borrow_token: Object<Metadata>,
        supply_token: Object<Metadata>,
        borrower: address,
        repayment_amount: u64,
        min_amount_received: u128,
    )  {
        abort 0
    }

    public entry fun accrue_interest(token: String)  {
        abort 0
    }

    public entry fun claim_rewards_apt(user: &signer, token: String)  {
        abort 0
    }

    public entry fun claim_all_apt_rewards(
        user: &signer,
        tokens: vector<String>
    )  {
        abort 0
    }

    public fun start_flashloan_coin<CoinType>(
        user: &signer,
        amount: u64,
    ): (Coin<CoinType>, FlashLoanReceipt)  {
        abort 0
    }

    public fun end_flashloan_coin<CoinType>(
        coin: Coin<CoinType>,
        receipt: FlashLoanReceipt,
    )  {
        abort 0
    }

    public fun start_flashloan(
        user: &signer,
        token: Object<Metadata>,
        amount: u64,
    ): (FungibleAsset, FlashLoanReceipt)  {
        abort 0
    }

    public fun end_flashloan(
        repayment: FungibleAsset,
        receipt: FlashLoanReceipt,
    )  {
        abort 0
    }


}
