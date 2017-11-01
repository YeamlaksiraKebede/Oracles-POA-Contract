pragma solidity ^0.4.14;

contract owned {
    address public owner;

    function owned() public {
        owner = 0xDd0BB0e2a1594240fED0c2f2c17C1E9AB4F87126; //msg.sender
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}
