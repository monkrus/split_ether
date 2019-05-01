Testing task
------------
Create a smart contract named `Splitter` whereby:

- [x] there are 3 people: Alice, Bob and Carol.
- [x] we should see the balance of the Splitter contract on the `Web page`.
- [x] whenever Alice sends ether to the contract for it to be split, half of 
it goes to Bob and the other half to Carol.
- [x] we can see the balances of Alice, Bob and Carol on the Web page.
- [x] Alice can use the Web page to split her ether.

It would be even better if you could team up with different people 
impersonating Alice, Bob and Carol, all cooperating on a test net.

## Prerequisites

- Users:  (A)lice, (B)ob and (C)arol
- When `A` sends ETH to `B` and `C`, it splits 50/50
- `A` is able to split ETH on the website
- We are able to see total balance
- We are able to see separate balance of `A`, `B` and `C`.

## Setting up your environment 1

* Check if Node.js and truffle are installed by typing in your 
terminal: 
    * `node -v` 
    * and then `truffle version`
* Install [Ganache](https://truffleframework.com/ganache)
* Initialize truffle `truffle init` to build a basic Truffle project
* Create package.json file  by typing `npm init`
* Write contracts in the contracts folder.(Splitter.sol, Owned.sol, Toggled.sol)
* Modify `truffle-config.js` file (`truffle.js` for Mac). 
* Run `truffle compile` to compile the contract
    * Please check the required version of the Solidity compiler (for all .sol files including imported libraries) 
    * by running `truffle version`. 
    * If needed, run `npm uninstall -g truffle` 
    * and the `npm install -g truffle`
* Create `2_splitter_migration.js` in the migrations folder.
* Run Ganache on your machine (select Quickstart)
* Run `truffle migrate --reset` to migrate the contract.

<<<<<<< HEAD
# Test
* Write tests in `splitter.test.js`
* Install locally: `npm install --save-dev chai` and `npm install --save-dev chai-as-promised`
* Run `truffle test` 

# Setting up your environment 2
* Create metacoin_standalone.js file
* Run `npm test test/metacoin_standalone.js`
* Run `npm init` ???
* Run `npm install truffle@5.0.8 --save-dev` ???
* Create a GUI






# Tips
- [event](https://stackoverflow.com/questions/35545625/event-triggering-in-solidity) 

=======
## How to run tests `splitter.test.js`
* Run Ganache on your machine (select Quickstart)
* `truffle test` 
>>>>>>> 1076ed2e87de130e19bb05e0fbb7b7ad7517852f
