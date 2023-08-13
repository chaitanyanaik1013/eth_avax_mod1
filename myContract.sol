// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandlingContract {

    int mass = 0;

    function handler(int _mass, int _acc) public view returns (int) {
        require(_mass > 0,"Mass of the object Cannot be 0.");

        assert(_mass == mass);

        if ((_mass * _acc) < 0){
            revert("Force of the object cannot be negative");
        }

        return _mass * _acc;
    }
}