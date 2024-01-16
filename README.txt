# ScoobyTireShop Smart Contract

This is a simple Ethereum smart contract for managing tire sales at ScooobyTires. Users can purchase tires by sending the appropriate amount of Ether to the contract.

## Smart Contract Details

### Functions:

1. **getScoobyTireBalance():**
   - Allows anyone to check the current balance of tires in ScoobyTires.

2. **restock(uint amount):**
   - Allows the owner to restock the tire inventory with a specified amount of tires.

3. **purchase(uint amount):**
   - Allows users to purchase a specified quantity of tires by sending the required Ether.

### Variables:

- **owner:**
   - The address of the contract owner.

- **tireBalances:**
   - A mapping to track the number of tires owned by each address.

## How to Use

### Using Remix (https://remix.ethereum.org/)

1. Open Remix in your web browser.

2. In Remix, create a new file and paste the content of `ScoobyTireShop.sol` into the editor.

3. Select the Solidity Compiler plugin in Remix, compile the contract by clicking on "Compile ScoobyTireShop.sol."

4. Switch to the Deploy & Run Transactions plugin, ensure you are connected to an Ethereum testnet (e.g., Ropsten), and deploy the contract by clicking on "Deploy."

5. Once deployed, interact with the contract using the provided functions:
   - Use the "getScoobyTireBalance" function to check the current balance of tires in ScoobyTireShop.
   - Use the "restock" function (available only to the owner) to add tires to the inventory.
   - Use the "purchase" function to buy tires by sending the required amount of Ether.

6. Check the Remix Console for transaction details and contract events.

## Important Note

This smart contract is a simplified educational project and may not be suitable for real-world use. Consider security and gas costs before deploying on the Ethereum mainnet.
