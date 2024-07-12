```markdown
# Oracles POA Network Smart Contracts

Ethereum smart contracts to manage validators in Oracles POA Network.

## Features Checklist

### ValidatorsStorage and ValidatorsManager Contracts

These contracts are used for storing and managing validator data.

- Validator's personal data can be added for valid initial keys from the ceremony.
- Validator's personal data addition is restricted for invalid initial keys from the ceremony.
- Duplicate validator data addition using the same initial key is prevented.
- Validator data addition is restricted if the invalid initial keys counter reaches its limit.
- Validator data can be added using a valid voting key from governance.
- Validator data addition is restricted for invalid voting keys from governance.
- Duplicate validator data addition using the same valid voting key is prevented.
- Validator data addition is restricted if the governance validators counter reaches its limit.
- Mining keys are added to the validators' array after new production keys are generated.
- Validator personal data fields (zip code, license expiry date, license ID, full name, street name, state) are correctly outputted as expected.

### KeysStorage and KeysManager Contracts

These contracts are for storing and managing data for the Oracles POA Network Keys Generation dApp.

- Initial keys can be added by the contract owner.
- Duplicate initial keys cannot be added.
- Initial keys are valid after using the `addInitialKey` function.
- Non-owners cannot generate initial keys.
- A limited number of initial keys (25) can be added.
- Production keys generation fails for invalid or already used initial keys.
- Licenses counter and initial keys invalidation counter are incremented when production keys are generated.
- Mining, voting, and payout keys are generated and validated after executing the `createKeys` function.
- Initial keys are invalidated immediately after mining, voting, and payout keys are created.

### BallotsStorage and BallotsManager Contracts

These contracts are for storing and managing data for the Oracles POA Network Governance dApp. (To be completed...)

## Known Ethereum Contracts Attack Vectors Checklist

- **Race Conditions:** Order of transactions within a block can be manipulated.
  - **Reentrancy:** Functions can be called repeatedly before the first invocation finishes.
  - **Cross-function Race Conditions:** Similar attacks using two different functions sharing the same state.
  - **Pitfalls in Race Condition Solutions:** Avoid calling functions that invoke external functions.
- **Timestamp Dependence:** Block timestamp can be manipulated by the miner.
- **Integer Overflow and Underflow:** Usage of unlimited increments can cause issues.
- **DoS with (Unexpected) Throw:** Unexpected throw can occur due to malicious users.
- **DoS with Block Gas Limit:** Block gas limit can be reached, e.g., by looping through a large array and sending `send()` in a single transaction.

## Compiling Oracles Contract

1. Install [dapp cli](http://dapp.readthedocs.io/en/latest/installation.html#installing-dapp)
2. Clone the repository: `git clone https://github.com/oraclesorg/oracles-contract`
3. Navigate to the project folder: `cd oracles-contract/`
4. Get submodule data: `git submodule update --init --recursive`
5. Compile the contracts: `dapp build`

Expected output:
- `./out/Oracles.bin` - Bytecode of Oracles contract
- `./out/Oracles.abi` - Binary interface of Oracles contract

## Running Tests

1. Start `testrpc` with specific accounts and balances using `make testrpc`.
2. Run tests with `truffle test`.
```

This `README.md` file is structured to provide clear and concise information about your project, its features, known issues, and instructions for compilation and testing.