// SPDX-License-Identifier: MIT LICENSE

/*                                          
Follow/Subscribe Youtube, Github
for more amazing content!!
@Net2Dev
███╗░░██╗███████╗████████╗██████╗░██████╗░███████╗██╗░░░██╗
████╗░██║██╔════╝╚══██╔══╝╚════██╗██╔══██╗██╔════╝██║░░░██║
██╔██╗██║█████╗░░░░░██║░░░░░███╔═╝██║░░██║█████╗░░╚██╗░██╔╝
██║╚████║██╔══╝░░░░░██║░░░██╔══╝░░██║░░██║██╔══╝░░░╚████╔╝░
██║░╚███║███████╗░░░██║░░░███████╗██████╔╝███████╗░░╚██╔╝░░
╚═╝░░╚══╝╚══════╝░░░╚═╝░░░╚══════╝╚═════╝░╚══════╝░░░╚═╝░░░
THIS CONTRACT IS AVAILABLE FOR EDUCATIONAL 
PURPOSES ONLY. YOU ARE SOLELY REPONSIBLE 
FOR ITS USE. I AM NOT RESPONSIBLE FOR ANY
OTHER USE. THIS IS TRAINING/EDUCATIONAL
MATERIAL. ONLY USE IT IF YOU AGREE TO THE
TERMS SPECIFIED ABOVE.
*/

pragma solidity 0.8.7;

contract Dao {

    struct RecordVote {
        uint256 voteAmount;
        uint256 choiceSelect;
    }

    mapping(address => RecordVote) public _voted;

// Create the event and specify the event parameters:
    event AddVote(address wallet, uint256 numVotes, uint256 choice);

    function vote(uint256 numVotes, uint256 choice) external {
        _voted[msg.sender].voteAmount = numVotes;
        _voted[msg.sender].choiceSelect = choice;
// Call the event with the emit action and pass the values from the function
        emit AddVote(msg.sender, numVotes, choice);
    }

}
