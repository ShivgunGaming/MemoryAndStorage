pragma solidity 0.7.5;

contract MemoryAndStorage {

    //Storage = Permanently stored on the blockchain.
    //Memory =  Temporarily stored on the blockchain.
    //Must keep storage and memory seperate.
    //Calldata = Like memory but READ-ONLY. More explination next course Solidity 201.

    //Note that you don't have to declare said storage & memory keywords because Solidity automatically does it for you,
    //but if have a complex data type like array or structs, you will need to specify where to store them.


    mapping(uint => User) users;

    struct User{
        uint id;
        uint balance;
    }
    

    function addUser(uint id, uint balance) public {
        users[id] = User(id, balance);
    }

    function updateBalance(uint id, uint balance) public {
         User storage user = users[id];
         user.balance = balance;
    }

    function getBalance(uint id) view public returns (uint) {
        return users[id].balance;
    }

}

