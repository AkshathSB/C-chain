# Deploying a contract on C-chain

To deploy a contract on the avalanche c-chain test network explorer called C-Chain

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has several functions mainly mint, burn and  transfer where the mint function adds inputted value(token) to your account(the given metamask account address) whereas, the burn function does removes values from your account (this could be performed for any account if the address is specified), the transfer function helps transfers tokens only from the owners account to another account by specifying the address.  This program helps me to understand the basic coding elements of Solidity such has creating user-defined functions and understanding the language and also learn how contracts are being transacted on the avalanche c-chain testnet explorer (snowtrace). 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g.,Degen.sol). 

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.17" (or another compatible version), and then click on the "Compile Degen.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the contracts address from the dropdown menu, and then you can view the contracts functions.

Once the contract is deployed, you can interact with it by calling the  "mint", "burn", "transfer" and other functions. Click on the "Degen" contract in the left-hand sidebar, and then click on the "mint" & "deploy" function and enter the required inputs (address, uint-value) and also to interact with the "transfer" function have to enter to_address, uint-value in the "transfer" function . Finally, click on the "transact" button to execute the functions. Once the transact button is clicked a popup appears showing the request of that function in the metamask interface asking for conformation once it is confirmed they can view the changes appeared in the contract (for eg., seeing the difference in balanceof function once mint and burn is executed).

To deploy the token on the fuji network run the "deploy.js" with the command
``` shell
npx hardhat run scripts/deploy.js --network fuji
```
then to verify and receive the snowtrace website link to that contract run, NOTE: The contract address is the address received when the above command is executed, it is also to which address the token is deployed to.
``` shell
npx hardhat verify <contract address> --network fuji
```
and then finally your token would be deployed locally on the hardhat network

## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Authors

Akshath.SB  

@akshathbhandiwad2@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
