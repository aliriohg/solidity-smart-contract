// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract padre {

    // Almacenamiento de la informacion del Factory
    mapping(address => address) public personal_contract;

    function Factory()public{
        address addr_personal_contract = address(new hijo(msg.sender,address(this)));
        personal_contract[msg.sender] = addr_personal_contract;
    }
}

contract hijo{

    Owner public propietario;
struct Owner{
    address owner;
    address smartContractPadre;
}

constructor(address account, address accountSC){
    propietario.owner = account;
    propietario.smartContractPadre = accountSC;
}
}