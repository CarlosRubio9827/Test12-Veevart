
# Test12-Veevart
Technical test that is designed to measure the level of curiosity and passion for technology.

In the APEX folder there are the files 'StairGame.cls' and 'StairGameTest.cls', which detail the solution proposed in APEX and the unit tests, with 100% coverage.

In the root folder there is the file 'App.py' where the algorithm that solves the problem is located. In addition to that, in the 'test' folder there is a file called 'test_app.py', where the tests for this algorithm are defined. .
## Prerequisites

Python 3
## Execution

Within a command console located in the root folder of the project, the command must be executed:
```
python .\app.py
```
**Note:**
in the file **'App.py'** the lines must be uncommented
```
game([3,5,5,4])
game([6,3,1,2,2])

```
To run the **unit tests**, the command is executed.
```
python -m unittest
```
But first the lines must be commented
```
# game([3,5,5,4])
# game([6,3,1,2,2])

```