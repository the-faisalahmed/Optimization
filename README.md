# Optimization Projects
Hello! This is a repository of interesting programming projects. I have a BS in Industrial Engineering and in my studies I have grown to appreciate mathematical programming. It's a wonderful topic and I am looking to expand my knowledge and expertise on the subject. My aim is to challenge myself with various types of optimization problems/puzzles and learn something new along the way.

*P.S. I'm still getting used to coding so my code may not be the most efficient!*

----
## [**Slant Puzzle**](https://github.com/the-faisalahmed/Optimization/blob/main/Slant_Puzzle.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/Slant_Puzzle_gif.gif)

Slant (also known as Gokigen Naname) is a logic puzzle with simple rules and challenging solutions.

You have to place a diagonal line in EVERY cell according to the rules:
- The numbers show how many diagonal lines meet at that point.
- The lines should NOT form a loop.

Though I haven't been able to find a solution for the ***no loop*** portion of the puzzle, I still think this was a fun little puzzle to partially solve. I'll be back soon enough with an actual solution!

## [**Tower of Hanoi**](https://github.com/the-faisalahmed/Optimization/blob/main/Tower_of_Hanoi.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/Tower%20of%20Hanoi_gif.gif)

The Tower of Hanoi is a classic mathematical puzzle that involves three rods and a number of disks of different sizes that can slide onto any rod. The puzzle starts with $n$ number of disks stacked in ascending order of size on one rod, the largest disk at the bottom and the smallest at the top. The objective is to move the entire stack to the last rod, obeying the following rules:

1. Only one disk can be moved at a time: You can only take the top disk from any stack and place it on top of another stack or on an empty rod.
2. A disk can only be placed on top of a larger disk: You cannot place a larger disk on top of a smaller disk.

I completed this puzzle using reinforcement learning. With 3 rods (A, B and C), there were a total of 27 possible states ($3^n$) and 6 possible actions (A to B, A to C, B to A, B to C, C to A, and C to B).

## [**Taquin 3x3**](https://github.com/the-faisalahmed/Optimization/blob/main/Taquin_3x3.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/Taquin3x3_gif.gif)

This one was an exciting one just because I'm new to machine learning! The 3x3 Taquin, commonly known as the 3x3 sliding puzzle or 8-puzzle, is a classic puzzle game consisting of a 3x3 grid with eight numbered tiles and one empty space. The objective is to swap the empty space with the tiles until the tiles are in numerical order (from 1 to 8 from top left row to bottom row). I completed this using Q learning as the reinforcement learning methodology. This was thanks in large part to a bunch of other repositories that I can't name all at once, but a special shoutout to [Neha Desaraju's](https://medium.com/@nehadesaraju) [article](https://towardsdatascience.com/hands-on-introduction-to-reinforcement-learning-in-python-da07f7aaca88) on the matter; definitely used her code as a launching off point and would highly recommend. I also took a fast paced ML course right before graduating that introduced me to reinforcement learning and I'm leaning on the code I used in this course.

This was originally planned to be the usual 4x4 Taquin, aka the 15 puzzle, however the Q table I had been ready to use was just way too large (over 20 trillion states :exploding_head:) to implement a tabular Q learning method while the 3x3 Taquin was much more feasible (only 362,880 states). I am, however, aiming to do a deep dive into Deep Q Networks (DQN) to address the large state space issue some time in the near future. Because I'm new to ML, there's bound to be lots of mistakes in the methodology of my code (let alone structure). Immediately, I can imagine an issue regarding the determination of rewards. The reward values were given fairly aribitrarily but the policies put in place were a little more thought out to encourage the agent to seek order in the grid. Still though, this could probably be the cause of suboptimal steps to solve the puzzle. 

## [**N-Queens**](https://github.com/the-faisalahmed/Optimization/blob/main/N_Queens.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/N_Queens_gif.gif)

Given N queens, place all queens on an N×N chessboard in such a way that no two queens threaten each other.

## [**Spot-It aka Dobble**](https://github.com/the-faisalahmed/Optimization/blob/main/Spot_It_Dobble.ipynb)

<div>
<img src="https://i0.wp.com/boingboing.net/wp-content/uploads/2021/10/spotit.jpg?fit=1024%2C556&ssl=1" width="500"/>
</div>
<br>
  
|Symbol 1|Symbol 2|Symbol 3|Symbol 4|
|----|----|----|----|
| 1 |  2 | 12 | 13 |
| 1 |  7 |  8 | 11 |
| 4 |  5 | 11 | 13 |
| 2 |  5 |  8 | 10 |
| 7 |  9 | 10 | 13 |
| 4 |  8 |  9 | 12 |
| 2 |  6 |  9 | 11 |
| 5 |  6 |  7 | 12 |
| 3 | 10 | 11 | 12 |
| 2 |  3 |  4 |  7 |
| 1 |  3 |  5 |  9 |
| 3 |  6 |  8 | 13 |
| 1 |  4 |  6 | 10 |

Spot-It aka Dobble employs prime number theory to ensure each pair of cards has exactly one matching symbol, making it a fast-paced game of pattern recognition.

## [**Hidato**](https://github.com/the-faisalahmed/Optimization/blob/main/Numbrix_and_Hidato.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/hidato_gif.gif)

Hidato is a logic puzzle where players must fill a grid with consecutive numbers, starting from a given number and moving horizontally, vertically, or diagonally to adjacent, open cells to form a continuous path.

## [**Numbrix**](https://github.com/the-faisalahmed/Optimization/blob/main/Numbrix_and_Hidato.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/numbrix_gif.gif)

Numbrix is a logic-based puzzle where players connect consecutive numbers in a grid, horizontally or vertically, with no diagonals, to form a continuous path.








