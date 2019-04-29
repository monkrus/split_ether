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

# Prerequisites

- Users:  (A)lice, (B)ob and (C)arol
- When `A` sends ETH to `B` and `C`, it splits 50/50
- `A` is able to split ETH on the website
- We are able to see total balance
- We are able to see separate balance of `A`, `B` and `C`.

## Setting up your environment

* Check if Node.js and truffle are installed by typing in your 
terminal: 
    * `node -v` 
    * and then `truffle version`
* Initialize truffle `truffle init`
* Create package.json file `npm init`
* Install OpenZeppelin library `npm install openzeppelin-solidity`
* Create .sol file in the contracts folder.
* Import from OpenZeppelin libraries using import keyword. 
    * Please note the importing format is **using forward slashes**. 
    * If import is highlighted red in your editor
        * add following to your user settings(e.g. in VSC):
`"solidity.packageDefaultDependenciesContractsDirectory": ""`,
`"solidity.packageDefaultDependenciesDirectory": "node_modules"`, 
* Modify `truffle-config.js` file (`truffle.js` for Mac). 
* Run `truffle compile`. 
    * Please check the required version of the Solidity compiler (for all .sol files including imported libraries) 
    * by running `truffle version`. 
    * If needed, run `npm uninstall -g truffle` 
    * and the `npm install -g truffle`
* Create `2_deploy_token.js` in the migrations folder.
* Run the blockchain emulator. 
    * Install `npm install ganache-cli` 
    * and run it `ganache-cli`.
* Run `truffle migrate --reset` to migrate the contract.


# Tip's
- [event](https://stackoverflow.com/questions/35545625/event-triggering-in-solidity) 

