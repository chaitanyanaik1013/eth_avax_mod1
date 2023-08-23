// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandlingContract {

    int mass; 
    int acc;
    function handler(int _mass, int _acc) public pure returns (int, int) {
        require(_mass > 0,"Mass of the object Cannot be 0 or less.");

        assert(_mass > 0 && _mass <= 10);

        if ((_mass * _acc) >= 100){
            revert("Force of the object is very large");
        }

        return (_mass, _acc);
    }
}
