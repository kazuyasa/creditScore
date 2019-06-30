pragma solidity >=0.4.21 <0.6.0;

contract CreditScore {
    struct User{
        string name;
        uint256 score;
        uint256 lastUpdate;
    }
    mapping(string => User) public users;

    // Create
    function createUser(string memory _id, string memory _name, uint256 _score)public returns(string memory){
        users[_id].name = _name;
        users[_id].score = _score;
        users[_id].lastUpdate = block.timestamp;
    }
    // Read
    function getUser(string memory _id )public view returns(string memory, uint256, uint256){
        return (users[_id].name, users[_id].score, users[_id].lastUpdate);
    }
}