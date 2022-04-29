pragma solidity ^0.8.7;

contract Test2{
    uint num;
    uint draw;
    uint[] public hit;

    function random(uint _num, uint _draw) public {
            require(_num < _draw, "error");

            for(uint i=0;i<_draw;i++){
                uint temp;
                temp = uint(keccak256(abi.encodePacked(block.timestamp,block.difficulty,  
                msg.sender))) % _num;
                hit.push(temp);
            }

        }

    function getArr() public view returns (uint[] memory) {
        return hit;
    }
}