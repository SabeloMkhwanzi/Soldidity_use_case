// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
//State variables
//global variable
//function modifier
// function
// error handling

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function onlyOnwerCanCall() external onlyOwner {
        //code
    }

    function anyOneCanCall() external {
        //code
    }
}
