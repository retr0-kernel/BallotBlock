pragma solidity >=0.4.22 <0.9.0;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Read/write candidates
    mapping(uint => Candidate) public candidates;

    // Mapping for storing voter status
    mapping(address => bool) public voters;

    // Store Candidates Count
    uint public candidatesCount;

    // Constructor using the `constructor` keyword
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    // Corrected function with data location for `_name`
    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    // Voting function
    function vote(uint _candidateId) public {
        // require that they haven't voted before
        require(!voters[msg.sender], "The voter has already voted.");

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Invalid candidate ID.");

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[_candidateId].voteCount++;
    }
}
