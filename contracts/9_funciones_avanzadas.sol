// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Food{

    // Estructura de datos
    struct dinnerPlate{
        string name;
        string ingredients;
    }

    // Menu del dia
    dinnerPlate[] public menu;

    // Creacion de un nuevo menu
    function newMenu(string memory name,string memory ingredientes) internal{
        menu.push(dinnerPlate(name,ingredientes));
    }
}

contract Hamburguer is Food{

    address public owner;
    
    constructor (){
        owner = msg.sender;
    }

    // Cocinar una hamburguesa desde el smart contract principal
    function doHamburgue(string memory ingredientes, uint units) external{
        require(units <=5,"Ups, no puedes pedir tantas hamburguesas");
        newMenu("Hamburguer",ingredientes);
    }

    // Modifier: permitir el acceso unicamente al owner y solo al owner
    modifier onlyOwner(){
        require(owner == msg.sender,"No tienes permiso para ejecutar esta funciont");
        _;
    }

    function hashPrivateNumber(uint number) public view onlyOwner returns (uint){
        return number;
    }

}