In this project, I created a game of checkers in Python on a 6 by 6 grid. 

A state in the game is represented by a 6 by 6 grid with values 0 (empty), 1 (player 1’s piece), 2 (player 2’s piece), 3 (player 1’s king), or 4 (player 2’s king. A move is represented by a length-2 list of integers representing one of 36 squares on the board.

My most challenging function of the five games was valid_moves. It iterates through the whole board checking the state of each start location to match it with the selected player, then calls a function I created that lists all the allowed basic diagonal moves. If the space at the end is empty, the move is appended to a list. If the space at the end is the other player’s piece, it calls a function I wrote that checks the diagonals to see if the last space is empty. If so, it returns the jump as a valid move.


