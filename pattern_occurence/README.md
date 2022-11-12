# Pattern finding

### About
This program uses 2-wise - each choice orthogonal table to find test cases

Equivalence classes: 
	1) Word length: {1, >1}
	2) Pattern length: {1, >1}
	3) Pattern occurence count: {0, 1, >1}
	4) Occurence index: {start, middle, end}

Table:
1)	2)	3)	4)
1	1	0	start
1	>1	1	middle
1	1	>1	end
1	>1	1	end
1	1	>1	middle
>1	>1	0	middle
>1	1	1	start
>1	>1	>1	start
>1	>1	0	end



### Prerequisites
- java installed
- (if necessary) chmod +x test.sh

### Running
- `./test.sh <path_to_TestPat.class> <path to file containing tests>

