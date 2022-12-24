// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./11_token_ERC20.sol";

contract customERC20 is ERC20 {

    // Constructor del smart contract
    constructor() ERC20("Alirio","ALIH"){
    }

    // Creacion de nuevos tokens

    function crearTokens()public{
        _mint(msg.sender,1000);
    }
}