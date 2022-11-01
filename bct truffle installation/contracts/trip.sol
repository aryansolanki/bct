// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
//Aryan Solanki 2019110057
contract creds{
    uint credlimit;

    constructor(){
        credlimit=100000;
    }

    function getcred() public view returns(uint){
        return credlimit;
    }

    function spent( uint food, uint stay, uint travel, uint miscellaneous) public {
        require (credlimit- travel -food -stay- miscellaneous >=0, "limit exceded");
        credlimit=credlimit - travel-stay-food-miscellaneous;
    }
    function reset()public {
        credlimit=100000;
    }

}