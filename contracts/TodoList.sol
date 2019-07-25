pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    //like a database dictionary
    mapping(uint => Task) public tasks;

    constructor() public{
        createTask("Check out mackweb.in");
    }
    //created a function to make tasks
    //it increments the task count
    //adds
    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }


}
