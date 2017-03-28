Task 1: Parse a CSV and process statistics
------------------------------------------

This task is intended as a warm-up challenge and to get to know the submission process.

|                            |                    |
|----------------------------|--------------------|
| Category                   | Data processing    |
| External libraries allowed | No                 |
| Small test file            | `make test.small` |
| Medium test file           | `make test.medium`  |


You receive a CSV file with an arbitrary number of columns and rows and need to
apply simple operations on the file. However, be aware that the file might be large.
Your program will be called as follows:

```
<your-programs> <file> 2=MEAN 3=SUM
```

Input:

```
col 0,col 1,col 2
542,414,26
335,950,113
378,954,231
```

Output:

```
1[MEAN]: 772.667
2[SUM]: 370
```
