# Optimization Projects

<p align="center">
  <img src="https://github.com/the-faisalahmed/Optimization/blob/main/media/newlogo.png" />
</p>

Hello! I have a BS in Industrial Engineering and in my studies I have grown to appreciate mathematical modelling. It's a wonderful topic and I am looking to expand my knowledge and expertise on the subject. My aim is to challenge myself with various types of optimization problems/puzzles and learn something new along the way.

This is a repository of interesting programming projects I've come across through sites like Stack Exchange, IBM's PonderThis challenges, Wiki puzzles and more. All of my mathematical modelling projects were completed in Python using [Pyomo](https://www.pyomo.org/) and Google's [OR-Tools](https://developers.google.com/optimization), both open source software capable of solving optimization models. I've also some experience optimizing with other modelling software such as [GAMS](https://www.gams.com/) and [AMPL](https://ampl.com/).

Included in this repository are some machine learning projects, some of which can be found towards the bottom of this file. These are fairly new concepts to me thus far but still super interesting!

*P.S. I'm still getting used to coding so my code may not be the most efficient!*

----
----
## **Mathematical Modelling**
----
----
### [**Queens via LinkedIn**](https://github.com/the-faisalahmed/Optimization/blob/main/grid%20puzzles/Queens_via_LinkedIn.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/media/Queens%20via%20LinkedIn.gif)

The goal is to have exactly one queen in each row, column, and color region.
Two queens cannot touch each other, not even diagonally.

### [**Light Up (Akari)**](https://github.com/the-faisalahmed/Optimization/blob/main/grid%20puzzles/Light_Up_Akari.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/media/Light%20Up%20(Akari)_gif.gif)

Light Up is played on a rectangular grid. The grid has both black cells and white cells in it. The objective is to place light bulbs on the grid so that every white square is lit. A cell is illuminated by a light bulb if they're in the same row or column, and if there are no black cells between them. Also, no light bulb may illuminate another light bulb.

Some of the black cells have numbers in them. A number in a black cell indicates how many light bulbs share an edge with that cell.

In solving this puzzle, I was getting solutions that appeared optimal but wouldn't fully cover all of the cells. Looking further into the logic, I realized allowing the rows and columns to sum to less than or equal to 1 was the issue. Simply including an objective function that maximized the total number of light bulbs used gave me the optimal solution.

### [**Slant Puzzle**](https://github.com/the-faisalahmed/Optimization/blob/main/grid%20puzzles/Slant_Puzzle.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/media/Slant%20Puzzle.gif)

Slant (also known as Gokigen Naname) is a logic puzzle with simple rules and challenging solutions.

You have to place a diagonal line in EVERY cell according to the rules:
- The numbers show how many diagonal lines meet at that point.
- The lines should NOT form a loop.

May 20-something 2024: Though I haven't been able to find a solution for the ***no loop*** portion of the puzzle, I still think this was a fun little puzzle to partially solve. I'll be back soon enough with an actual solution!

June 2nd 2024: I got a solution! My thought at first was to try and maximize the objective value which was the total sum of each of the points on the grid (which did seem to work mathematically) but for some reason, the solvers I was using (CBC and Bonmin) were just not reaching the optimal value and still causing the loops. I instead switched to maximizing the total squares with 1's (right slants) and that solved the no loops portion. I do wonder if this model would produce feasible boards under *any* Slant puzzle, or if minimizing the objective function in some scenarios would be better.

### [**N-Queens**](https://github.com/the-faisalahmed/Optimization/blob/main/grid%20puzzles/N_Queens.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/media/N_Queens_gif.gif)

Given N queens, place all queens on an N×N chessboard in such a way that no two queens threaten each other.

### [**Spot-It aka Dobble**](https://github.com/the-faisalahmed/Optimization/blob/main/IBM%20Ponder%20This%20problems/Spot_It_Dobble.ipynb)

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

### [**Hidato**](https://github.com/the-faisalahmed/Optimization/blob/main/grid%20puzzles/Numbrix_and_Hidato.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/media/hidato_gif.gif)

Hidato is a logic puzzle where players must fill a grid with consecutive numbers, starting from a given number and moving horizontally, vertically, or diagonally to adjacent, open cells to form a continuous path.

### [**Numbrix**](https://github.com/the-faisalahmed/Optimization/blob/main/grid%20puzzles/Numbrix_and_Hidato.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/media/numbrix_gif.gif)

Numbrix is a logic-based puzzle where players connect consecutive numbers in a grid, horizontally or vertically, with no diagonals, to form a continuous path.

----
----
## **Machine Learning**
----
----
### [**Lights Out!**](https://github.com/the-faisalahmed/Optimization/blob/main/maching%20learnin%20gpuzzles/Lights_Out.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/media/Lights_Out_gif.gif)

Lights Out is a logic puzzle game where the objective is to find the series of lights to switch in order to turn off all of the lights on the grid. The game features a grid of buttons, each of which toggles the state (on or off) of the light it is on and the lights immediately adjacent to it (above, below, left, and right). Only the combination of the lights to switch matters, as any permutation of this combination will result in the same final state.

I used a simple Q-learning model to complete this puzzle. As the grid size ($n \times n$) increases, a tabular Q table becomes costly since the state space covers $2^{n^2}$ states. In this scenario, a DQN would be best to solve the puzzle.

### [**Tower of Hanoi**](https://github.com/the-faisalahmed/Optimization/blob/main/maching%20learnin%20gpuzzles/Tower_of_Hanoi.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/media/Tower%20of%20Hanoi_gif.gif)

The Tower of Hanoi is a classic mathematical puzzle that involves three rods and a number of disks of different sizes that can slide onto any rod. The puzzle starts with $n$ number of disks stacked in ascending order of size on one rod, the largest disk at the bottom and the smallest at the top. The objective is to move the entire stack to the last rod, obeying the following rules:

1. Only one disk can be moved at a time: You can only take the top disk from any stack and place it on top of another stack or on an empty rod.
2. A disk can only be placed on top of a larger disk: You cannot place a larger disk on top of a smaller disk.

I completed this puzzle using reinforcement learning. With 3 rods (A, B and C), there were a total of 27 possible states ($3^n$) and 6 possible actions (A to B, A to C, B to A, B to C, C to A, and C to B).

### [**Taquin 3x3**](https://github.com/the-faisalahmed/Optimization/blob/main/maching%20learnin%20gpuzzles/Taquin_3x3.ipynb)

![](https://github.com/the-faisalahmed/Optimization/blob/main/media/Taquin3x3_gif.gif)

This one was an exciting one just because I'm new to machine learning! The 3x3 Taquin, commonly known as the 3x3 sliding puzzle or 8-puzzle, is a classic puzzle game consisting of a 3x3 grid with eight numbered tiles and one empty space. The objective is to swap the empty space with the tiles until the tiles are in numerical order (from 1 to 8 from top left row to bottom row). I completed this using Q learning as the reinforcement learning methodology. This was thanks in large part to a bunch of other repositories that I can't name all at once, but a special shoutout to [Neha Desaraju's](https://medium.com/@nehadesaraju) [article](https://towardsdatascience.com/hands-on-introduction-to-reinforcement-learning-in-python-da07f7aaca88) on the matter; definitely used her code as a launching off point and would highly recommend. I also took a fast paced ML course right before graduating that introduced me to reinforcement learning and I'm leaning on the code I used in this course.

This was originally planned to be the usual 4x4 Taquin, aka the 15 puzzle, however the Q table I had been ready to use was just way too large (over 20 trillion states :exploding_head:) to implement a tabular Q learning method while the 3x3 Taquin was much more feasible (only 362,880 states). I am, however, aiming to do a deep dive into Deep Q Networks (DQN) to address the large state space issue some time in the near future. Because I'm new to ML, there's bound to be lots of mistakes in the methodology of my code (let alone structure). Immediately, I can imagine an issue regarding the determination of rewards. The reward values were given fairly aribitrarily but the policies put in place were a little more thought out to encourage the agent to seek order in the grid. Still though, this could probably be the cause of suboptimal steps to solve the puzzle.
