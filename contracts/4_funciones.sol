// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract funciones{


  // view No modifica los datos pero si puede acceder a ellos
  // pure No accede ni siquiera a los datos
  // payable modifica los datos, permite recibir ethers
   // function <nombre_funcion>(<parametros>) [public|private] [view | pure | payable]* [return return_type]

   // Eventos los eventos comunican un suceso en la cadena de loques

   // Declarar un evento event <nombre_evento>(types);
   // emitir un evento emit <nombre_evento>(values);

   // pure
   function getName() public pure returns (string memory) {
       return "Ali";
   }

   // Funcio de tipo view 
   uint256 x = 100;
   function getX() public view returns(uint256){
       return x;
   }

    // funcion de tipo payable
    

}