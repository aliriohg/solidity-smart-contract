// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;



contract variables_modifiers{

    //Valores enteros sin signos (uint)
    uint256 a;
    uint8 public b=3;

    //valores con signo
    int256 c;
    int8 public d = -10;
    int e = 65;

    // variable string
    string str;
    string public str_public = "Esto es publico";
    string public str_privado = "Esto es privado";

    // variable boolean
    bool boolean;
    bool public boolean_true = true;
    bool private boolead_false = false;

    //variables bytes
    bytes32 first_bytes;
    bytes4 public second_byte="D";
    bytes32 public hashing_keccak256 = keccak256(abi.encodePacked("Hello World",uint(10),msg.sender));
    bytes32 public hashing_sha256 = sha256(abi.encodePacked("Hello World"));
    bytes20 public hashing_ripemd160 = ripemd160(abi.encodePacked("Hello World"));

    // variable address
    address public my_address = msg.sender;
    address public addres1 = 0xcD6a42782d230D7c13A74ddec5dD140e55499Df9;


    // variables enum
    enum options {ON,OFF,ERROR}
    options public state = options.ERROR;

    function turnOn() public {
        state = options.ON;
    }
     function turnOff() public {
        state = options.OFF;
    }

    function displayState() public view returns (options){
        return state;
    }
}