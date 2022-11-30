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
contract Fallback_Receive{

    event log(string name,address sender,uint amount,bytes data);

    fallback()external payable{
        emit log("fallback",msg.sender, msg.value,msg.data);
    }

    receive()external payable{
        emit log("receive",msg.sender, msg.value,"");
    }
}