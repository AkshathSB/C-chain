// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

     string public shop_items;

    constructor() ERC20("Degen", "DGN") {
        shop_items = "The following items are available in our shop: 1.Jacket, 2.Jeans, 3.Hoodies, 4.Jewellery";
    }

        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }

        function redeem(uint256 num) public {
            assert(balanceOf(msg.sender)>= 100 && num<5&& num>0);
            _burn(msg.sender, num*107);
        }
}
