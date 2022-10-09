pragma solidity ^0.5.0;

contract Adoption{
    address[16] public adopters; // type array of address ,and array size is  16 , public makes automatic getter methods


    // mapping(uint)
function adopt(uint petId)public returns (uint){
    require (petId>=0 && petId <=15);
    require(adopters[petId]!=address(0),"Pet has been already adopted");
    
    adopters[petId]=msg.sender;
    return petId;


}

function getAdopters() public view returns (address[16] memory) {
    return adopters;
}

}