pragma solidity ^0.8.4;

/*
fallback() receive()

msg.data -> El calldata completo que es un area no modificable y no persistente en la 
que se almacena los argumentos de la funcion y que se comporta principalmente como la memoria

    Ether enviado al smart contract
                |
        msg.data vacio?
        |               |
        si              No
        |               |
existe receive?        fallback()
     |          |              
    Si          No
    |           |
receive()   fallback()
*/
contract ethSend{

}