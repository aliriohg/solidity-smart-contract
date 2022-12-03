// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract loops_conditionals{

    // suma de los 10 primeros numeros a partir de un numero introducido
    function sum(uint number)public pure returns (uint){
        uint aux_suma=0;

        // bucle for
        for(uint i = number; i < (10+number);i++){
            aux_suma = aux_suma + i;
        }
        return aux_suma;
    }

    function odd()public pure returns(uint){
            uint aux_sum = 0;
            uint counter = 0;
            uint counter_odd = 0;
            while(counter_odd < 10){

                if(counter % 2 != 0){
                    aux_sum = aux_sum + counter;
                    counter_odd++;
                }
                counter++;
            }
            return aux_sum;
    }

    function sum_resta (string memory operation, uint a,uint b)public pure returns (uint) {
    
    bytes32 hash_operation = keccak256(abi.encodePacked(operation));
    
    if(hash_operation == keccak256(abi.encodePacked("suma"))){
        return a+b;
    }else{
        return a-b;
    }
    }
}