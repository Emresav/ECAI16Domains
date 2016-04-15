the results of cashpoint tests in POPF 

 POPCORN_v3 


 DOMAIN/PROBLEM 1 

File: .\cashpoint\domain1.pddl
File: .\cashpoint\p1.pddl
Number of literals: 8
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%] [140%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%] [140%]
Have a metric tracking fluent: (maxwithdraw bank2 dollar)
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
89% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 9.000
b (8.000 | 5.000)b (7.000 | 12.002)b (6.000 | 12.002)b (5.000 | 17.003)b (4.000 | 25.006)b (3.000 | 25.006)b (2.000 | 25.008)b (1.000 | 25.008);;;; Solution Found
; States evaluated: 24
; Cost: 30.009
0.000: (goto home supermarket)  [5.000]
5.001: (goto supermarket bank1)  [5.000]
10.002: (withdraw_money bank1 dollar)  [2.000]
12.003: (goto bank1 supermarket)  [5.000]
17.004: (buy_snacks supermarket dollar)  [1.000]
18.005: (goto supermarket bank1)  [5.000]
23.006: (withdraw_money bank1 dollar)  [2.000]
25.007: (check_pocket dollar)  [0.001]
25.009: (goto bank1 pub)  [5.000]

 Execution time of Domain\Problem 1 
00:00:00.1317425

 DOMAIN/PROBLEM 2 

File: .\cashpoint\domain2.pddl
File: .\cashpoint\p2.pddl
Number of literals: 9
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%]
Have a metric tracking fluent: (maxwithdraw bank2 dollar)
Have a metric tracking fluent: (maxwithdraw bank3 dollar)
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
92% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 11.000
b (10.000 | 5.000)b (9.000 | 12.002)b (8.000 | 12.002)b (7.000 | 14.003)b (6.000 | 14.003)b (5.000 | 14.005)b (4.000 | 14.005)b (3.000 | 19.006)b (2.000 | 20.007)b (1.000 | 20.007);;;; Solution Found
; States evaluated: 14
; Cost: 25.008
0.000: (goto home supermarket)  [5.000]
5.001: (goto supermarket bank1)  [5.000]
10.002: (withdraw_money bank1 dollar)  [2.000]
12.003: (withdraw_money bank1 dollar)  [2.000]
14.004: (check_pocket dollar)  [0.001]
14.006: (goto bank1 supermarket)  [5.000]
19.007: (buy_snacks supermarket dollar)  [1.000]
20.008: (goto supermarket pub)  [5.000]

 Execution time of Domain\Problem 2 
00:00:00.1082924

 DOMAIN/PROBLEM 3 

File: .\cashpoint\domain3.pddl
File: .\cashpoint\p3.pddl
Number of literals: 10
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
86% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 11.000
b (10.000 | 5.000)b (9.000 | 12.002)b (8.000 | 12.002)b (7.000 | 14.003)b (6.000 | 14.003)b (5.000 | 14.005)b (4.000 | 14.005)b (3.000 | 20.007)b (2.000 | 20.007)b (1.000 | 25.008);;;; Solution Found
; States evaluated: 15
; Cost: 30.009
0.000: (goto home supermarket)  [5.000]
5.001: (goto supermarket bank1)  [5.000]
10.002: (withdraw_money bank1 dollar)  [2.000]
12.003: (withdraw_money bank1 dollar)  [2.000]
14.004: (check_pocket dollar)  [0.001]
14.006: (goto bank1 supermarket)  [5.000]
19.007: (buy_snacks supermarket dollar)  [1.000]
20.008: (goto supermarket bank1)  [5.000]
25.009: (goto bank1 pub)  [5.000]

 Execution time of Domain\Problem 3 
00:00:00.1271196

 DOMAIN/PROBLEM 4 

File: .\cashpoint\domain4.pddl
File: .\cashpoint\p4.pddl
Number of literals: 12
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
87% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 14.000
b (13.000 | 5.000)b (12.000 | 12.002)b (11.000 | 12.002)b (10.000 | 14.003)b (9.000 | 14.003)b (8.000 | 20.005)b (7.000 | 20.005)b (6.000 | 25.006)b (5.000 | 27.009)
Resorting to best-first search
b (13.000 | 5.000)b (12.000 | 7.001)b (11.000 | 7.001)b (10.000 | 9.002)b (9.000 | 9.002)b (8.000 | 15.004)b (7.000 | 15.004)b (6.000 | 20.005)b (5.000 | 22.008)b (4.000 | 27.009)b (3.000 | 33.011)b (2.000 | 33.011)b (1.000 | 38.012);;;; Solution Found
; States evaluated: 188
; Cost: 43.013
0.000: (goto home bank1)  [5.000]
5.001: (withdraw_money bank1 dollar)  [2.000]
7.002: (withdraw_money bank1 dollar)  [2.000]
9.003: (goto bank1 supermarket)  [5.000]
14.004: (buy_snacks supermarket dollar)  [1.000]
15.005: (goto supermarket bank1)  [5.000]
20.006: (check_pocket dollar)  [0.001]
20.008: (goto bank1 bank2)  [5.000]
25.009: (withdraw_money bank2 dollar)  [2.000]
27.010: (goto bank2 shop)  [5.000]
32.011: (buy_shoes shop dollar)  [1.000]
33.012: (goto shop bank1)  [5.000]
38.013: (goto bank1 pub)  [5.000]

 Execution time of Domain\Problem 4 
00:00:01.2518555

 DOMAIN/PROBLEM 5 

File: .\cashpoint\domain5.pddl
File: .\cashpoint\p5.pddl
Number of literals: 13
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (maxwithdraw bank1 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank2 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
Have identified that bigger values of (inpocket sterling) are preferable
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank3 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank4 sterling) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
80% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 25.000
b (24.000 | 5.000)b (23.000 | 12.002)b (22.000 | 12.002)b (21.000 | 14.003)b (20.000 | 14.003)b (19.000 | 16.004)b (18.000 | 16.004)b (17.000 | 21.005)b (16.000 | 22.006)b (15.000 | 22.006)b (14.000 | 27.007)b (13.000 | 29.008)b (12.000 | 29.008)b (11.000 | 31.009)b (10.000 | 31.009)b (9.000 | 33.010)b (8.000 | 33.010)b (7.000 | 33.012)b (6.000 | 33.012)b (5.000 | 40.016)b (4.000 | 40.016)b (3.000 | 46.018)b (2.000 | 46.018)b (1.000 | 51.019);;;; Solution Found
; States evaluated: 44
; Cost: 56.020
0.000: (goto home supermarket)  [5.000]
5.001: (goto supermarket bank3)  [5.000]
10.002: (withdraw_dollar bank3 dollar)  [2.000]
12.003: (withdraw_dollar bank3 dollar)  [2.000]
14.004: (withdraw_dollar bank3 dollar)  [2.000]
16.005: (goto bank3 supermarket)  [5.000]
21.006: (buy_snacks supermarket dollar)  [1.000]
22.007: (goto supermarket bank1)  [5.000]
27.008: (withdraw_pound bank1 sterling)  [2.000]
29.009: (withdraw_pound bank1 sterling)  [2.000]
31.010: (withdraw_pound bank1 sterling)  [2.000]
33.011: (check_pocket sterling)  [0.001]
33.013: (check_pocket dollar)  [0.001]
33.015: (goto bank1 bank3)  [5.000]
38.016: (withdraw_dollar bank3 dollar)  [2.000]
40.017: (goto bank3 shop)  [5.000]
45.018: (buy_shoes shop dollar)  [1.000]
46.019: (goto shop bank1)  [5.000]
51.020: (goto bank1 pub)  [5.000]

 Execution time of Domain\Problem 5 
00:00:00.6511392

 DOMAIN/PROBLEM 6 

File: .\cashpoint\domain6.pddl
File: .\cashpoint\p6.pddl
Number of literals: 13
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (maxwithdraw bank1 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank2 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
Have identified that bigger values of (inpocket sterling) are preferable
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank3 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank4 sterling) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
80% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 28.000
b (27.000 | 5.000)b (26.000 | 12.002)b (25.000 | 12.002)b (24.000 | 14.003)b (23.000 | 14.003)b (22.000 | 16.004)b (21.000 | 16.004)b (20.000 | 18.005)b (19.000 | 18.005)b (18.000 | 18.007)b (17.000 | 18.007)
Resorting to best-first search
b (27.000 | 5.000)b (26.000 | 7.001)b (25.000 | 7.001)b (24.000 | 9.002)b (23.000 | 9.002)b (22.000 | 11.003)b (21.000 | 11.003)b (20.000 | 13.004)b (19.000 | 13.004)b (18.000 | 13.006)b (17.000 | 13.006)b (16.000 | 20.008)b (15.000 | 20.008)b (14.000 | 22.009)b (13.000 | 22.009)b (12.000 | 24.010)b (11.000 | 24.010)b (10.000 | 26.011)b (9.000 | 26.011)b (8.000 | 33.015)b (7.000 | 33.015)b (6.000 | 39.017)b (5.000 | 39.017)b (4.000 | 44.018)b (3.000 | 50.020)b (2.000 | 50.020)b (1.000 | 55.021);;;; Solution Found
; States evaluated: 348
; Cost: 60.022
0.000: (goto home bank1)  [5.000]
5.001: (withdraw_pound bank1 sterling)  [2.000]
7.002: (withdraw_pound bank1 sterling)  [2.000]
9.003: (withdraw_pound bank1 sterling)  [2.000]
11.004: (withdraw_pound bank1 sterling)  [2.000]
13.005: (check_pocket sterling)  [0.001]
13.007: (goto bank1 bank3)  [5.000]
18.008: (withdraw_dollar bank3 dollar)  [2.000]
20.009: (withdraw_dollar bank3 dollar)  [2.000]
22.010: (withdraw_dollar bank3 dollar)  [2.000]
24.011: (withdraw_dollar bank3 dollar)  [2.000]
26.012: (check_pocket dollar)  [0.001]
26.014: (goto bank3 bank4)  [5.000]
31.015: (withdraw_dollar bank4 dollar)  [2.000]
33.016: (goto bank4 supermarket)  [5.000]
38.017: (buy_snacks supermarket dollar)  [1.000]
39.018: (goto supermarket bank1)  [5.000]
44.019: (goto bank1 shop)  [5.000]
49.020: (buy_shoes shop dollar)  [1.000]
50.021: (goto shop bank1)  [5.000]
55.022: (goto bank1 pub)  [5.000]

 Execution time of Domain\Problem 6 
00:00:06.4289873

 DOMAIN/PROBLEM 7 

File: .\cashpoint\domain7.pddl
File: .\cashpoint\p7.pddl
Number of literals: 13
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (maxwithdraw bank1 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank2 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank3 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank4 sterling) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
80% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 24.000
b (23.000 | 5.000)b (21.000 | 12.002)b (20.000 | 12.002)b (18.000 | 14.003)
Resorting to best-first search
b (23.000 | 5.000)b (21.000 | 7.001)b (20.000 | 7.001)b (18.000 | 9.002)b (17.000 | 14.003)b (16.000 | 14.005)b (15.000 | 14.005)b (13.000 | 21.007)b (12.000 | 21.007)b (10.000 | 23.008)b (9.000 | 28.009)b (8.000 | 30.012)b (7.000 | 30.012)b (6.000 | 36.014)b (5.000 | 36.014)b (4.000 | 41.015)b (3.000 | 47.017)b (2.000 | 47.017)b (1.000 | 52.018);;;; Solution Found
; States evaluated: 1717
; Cost: 57.019
0.000: (goto home bank1)  [5.000]
5.001: (withdraw_pound bank1 sterling)  [2.000]
7.002: (goto bank1 bank2)  [5.000]
12.003: (withdraw_pound bank2 sterling)  [2.000]
14.004: (check_pocket sterling)  [0.001]
14.006: (goto bank2 bank3)  [5.000]
19.007: (withdraw_dollar bank3 dollar)  [2.000]
21.008: (goto bank3 bank4)  [5.000]
26.009: (withdraw_dollar bank4 dollar)  [2.000]
28.010: (withdraw_dollar bank4 dollar)  [2.000]
30.011: (check_pocket dollar)  [0.001]
30.013: (goto bank4 supermarket)  [5.000]
35.014: (buy_snacks supermarket dollar)  [1.000]
36.015: (goto supermarket bank1)  [5.000]
41.016: (goto bank1 shop)  [5.000]
46.017: (buy_shoes shop dollar)  [1.000]
47.018: (goto shop bank1)  [5.000]
52.019: (goto bank1 pub)  [5.000]

 Execution time of Domain\Problem 7 
00:02:20.3360742

 DOMAIN/PROBLEM 8 

File: .\cashpoint\domain8.pddl
File: .\cashpoint\p8.pddl
Number of literals: 15
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Have identified that bigger values of (maxwithdraw bank1 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank2 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank3 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank4 sterling) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
82% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 23.000
b (22.000 | 5.000)b (21.000 | 12.002)b (20.000 | 12.002)b (19.000 | 14.003)b (18.000 | 49.005)b (17.000 | 54.006)b (16.000 | 61.008)
Resorting to best-first search
b (22.000 | 5.000)b (21.000 | 7.001)b (20.000 | 7.001)b (19.000 | 9.002)b (18.000 | 14.003)b (17.000 | 14.005)b (16.000 | 14.005)b (15.000 | 21.007)b (14.000 | 21.007)b (13.000 | 23.008)b (12.000 | 28.009)b (11.000 | 33.010)b (11.000 | 30.012)b (10.000 | 30.012)b (9.000 | 35.013)b (8.000 | 36.014)b (6.000 | 41.015)b (5.000 | 78.018)b (4.000 | 78.018)b (3.000 | 84.020)b (2.000 | 84.020)b (1.000 | 89.021);;;; Solution Found
; States evaluated: 1887
; Cost: 94.022
0.000: (goto home bank1)  [5.000]
5.001: (withdraw_pound bank1 sterling)  [2.000]
7.002: (goto bank1 bank2)  [5.000]
12.003: (withdraw_pound bank2 sterling)  [2.000]
14.004: (check_pocket sterling)  [0.001]
14.006: (goto bank2 bank3)  [5.000]
19.007: (withdraw_dollar bank3 dollar)  [2.000]
21.008: (goto bank3 bank4)  [5.000]
26.009: (withdraw_dollar bank4 dollar)  [2.000]
28.010: (check_pocket dollar)  [0.001]
28.012: (withdraw_dollar bank4 dollar)  [2.000]
30.013: (goto bank4 supermarket)  [5.000]
35.014: (buy_snacks supermarket dollar)  [1.000]
36.015: (goto supermarket eiffel)  [5.000]
41.016: (sightseeing eiffel dollar)  [30.000]
71.017: (goto eiffel bank3)  [5.000]
76.018: (withdraw_dollar bank3 dollar)  [2.000]
78.019: (goto bank3 shop)  [5.000]
83.020: (buy_shoes shop dollar)  [1.000]
84.021: (goto shop bank1)  [5.000]
89.022: (goto bank1 pub)  [5.000]

 Execution time of Domain\Problem 8 
00:04:12.7859856

 DOMAIN/PROBLEM 9 

File: .\cashpoint\domain9.pddl
File: .\cashpoint\p9.pddl
Number of literals: 16
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (maxwithdraw bank1 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank2 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
Have identified that bigger values of (inpocket sterling) are preferable
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank3 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank4 sterling) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
82% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 23.000
b (22.000 | 5.000)b (21.000 | 12.002)b (20.000 | 12.002)b (19.000 | 14.003)b (18.000 | 49.005)b (17.000 | 54.006)b (16.000 | 61.008)
Resorting to best-first search
b (22.000 | 5.000)b (21.000 | 7.001)b (20.000 | 7.001)b (19.000 | 9.002)b (18.000 | 14.003)b (17.000 | 14.005)b (16.000 | 14.005)b (15.000 | 21.007)b (14.000 | 21.007)b (13.000 | 23.008)b (12.000 | 28.009)b (11.000 | 33.010)b (11.000 | 30.012)b (10.000 | 30.012)b (9.000 | 35.013)b (8.000 | 36.014)b (6.000 | 41.015)b (5.000 | 78.018)b (4.000 | 78.018)b (3.000 | 84.020)b (2.000 | 84.020)b (1.000 | 89.021);;;; Solution Found
; States evaluated: 1928
; Cost: 94.022
0.000: (goto home bank1)  [5.000]
5.001: (withdraw_pound bank1 sterling)  [2.000]
7.002: (goto bank1 bank2)  [5.000]
12.003: (withdraw_pound bank2 sterling)  [2.000]
14.004: (check_pocket sterling)  [0.001]
14.006: (goto bank2 bank3)  [5.000]
19.007: (withdraw_dollar bank3 dollar)  [2.000]
21.008: (goto bank3 bank4)  [5.000]
26.009: (withdraw_dollar bank4 dollar)  [2.000]
28.010: (check_pocket dollar)  [0.001]
28.012: (withdraw_dollar bank4 dollar)  [2.000]
30.013: (goto bank4 supermarket)  [5.000]
35.014: (buy_snacks supermarket dollar)  [1.000]
36.015: (goto supermarket eiffel)  [5.000]
41.016: (sightseeing eiffel dollar)  [30.000]
71.017: (goto eiffel bank3)  [5.000]
76.018: (withdraw_dollar bank3 dollar)  [2.000]
78.019: (goto bank3 shop)  [5.000]
83.020: (buy_shoes shop dollar)  [1.000]
84.021: (goto shop bank1)  [5.000]
89.022: (goto bank1 pub)  [5.000]

 Execution time of Domain\Problem 9 
00:01:40.3316267

 DOMAIN/PROBLEM 10 

File: .\cashpoint\domain10.pddl
File: .\cashpoint\p10.pddl
Number of literals: 16
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (maxwithdraw bank1 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank2 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
Have identified that bigger values of (inpocket sterling) are preferable
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank3 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank4 sterling) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
82% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 23.000
b (22.000 | 5.000)b (21.000 | 12.002)
Resorting to best-first search
b (22.000 | 5.000)b (21.000 | 7.001)b (20.000 | 7.001)b (19.000 | 9.002)b (18.000 | 9.002)b (17.000 | 14.003)b (17.000 | 11.005)b (16.000 | 11.005)b (15.000 | 16.006)b (14.000 | 17.007)b (13.000 | 22.008)b (12.000 | 52.009)b (12.000 | 27.009)b (11.000 | 52.009)b (10.000 | 57.010)b (9.000 | 57.010)b (8.000 | 58.011)b (7.000 | 63.012)b (6.000 | 65.013)b (5.000 | 77.016)b (4.000 | 79.017)b (3.000 | 88.022)b (2.000 | 88.022)b (1.000 | 93.023);;;; Solution Found
; States evaluated: 5070
; Cost: 98.024
0.000: (goto home bank3)  [5.000]
5.001: (withdraw_dollar bank3 dollar)  [2.000]
7.002: (withdraw_dollar bank3 dollar)  [2.000]
9.003: (check_pocket dollar)  [0.001]
9.005: (withdraw_dollar bank3 dollar)  [2.000]
11.006: (goto bank3 supermarket)  [5.000]
16.007: (buy_snacks supermarket dollar)  [1.000]
17.008: (goto supermarket eiffel)  [5.000]
22.009: (sightseeing eiffel dollar)  [30.000]
52.010: (goto eiffel shop)  [5.000]
57.011: (buy_shoes shop dollar)  [1.000]
58.012: (goto shop bank3)  [5.000]
63.013: (withdraw_dollar bank3 dollar)  [2.000]
65.014: (goto bank3 changeoffice)  [5.000]
70.015: (exchange_currencies changeoffice dollar sterling)  [2.000]
72.016: (goto changeoffice bank3)  [5.000]
77.017: (withdraw_dollar bank3 dollar)  [2.000]
79.018: (withdraw_dollar bank3 dollar)  [2.000]
81.019: (goto bank3 changeoffice)  [5.000]
86.020: (exchange_currencies changeoffice dollar sterling)  [2.000]
88.021: (check_pocket sterling)  [0.001]
88.023: (goto changeoffice bank1)  [5.000]
93.024: (goto bank1 pub)  [5.000]

 Execution time of Domain\Problem 10 
00:01:57.4538094

 DOMAIN/PROBLEM 11 

File: .\cashpoint\domain11.pddl
File: .\cashpoint\p11.pddl
Number of literals: 18
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (maxwithdraw bank1 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank2 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank5 euro) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
Have identified that bigger values of (inpocket sterling) are preferable
Have identified that bigger values of (inpocket euro) are preferable
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank1 euro) are preferable
Have identified that bigger values of (maxwithdraw bank2 euro) are preferable
Have identified that bigger values of (maxwithdraw bank3 euro) are preferable
Have identified that bigger values of (maxwithdraw bank4 euro) are preferable
Have identified that bigger values of (maxwithdraw bank3 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank4 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank5 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank5 sterling) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
76% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 29.000
b (28.000 | 5.000)b (27.000 | 12.002)b (26.000 | 12.002)b (25.000 | 14.003)b (24.000 | 49.005)b (23.000 | 54.006)b (22.000 | 61.008)
Resorting to best-first search
b (28.000 | 5.000)b (27.000 | 7.001)b (26.000 | 7.001)b (25.000 | 9.002)b (23.000 | 12.002)b (22.000 | 51.006)b (21.000 | 56.007)b (20.000 | 56.007)b (19.000 | 57.008)b (18.000 | 62.009)b (17.000 | 64.010)b (16.000 | 64.010)b (15.000 | 66.011)b (14.000 | 71.012)b (13.000 | 78.014)b (12.000 | 78.014)b (11.000 | 85.016)b (10.000 | 85.016)b (9.000 | 87.019)b (8.000 | 87.019)b (7.000 | 93.023)b (6.000 | 93.023)b (5.000 | 98.024)b (4.000 | 100.025)b (3.000 | 100.025)b (2.000 | 100.027)b (1.000 | 100.027);;;; Solution Found
; States evaluated: 2719
; Cost: 105.028
0.000: (goto home bank1)  [5.000]
5.001: (withdraw_pound bank1 sterling)  [2.000]
7.002: (goto bank1 changeoffice)  [5.000]
12.003: (exchange_currencies changeoffice sterling euro)  [2.000]
14.004: (exchange_currencies changeoffice euro dollar)  [2.000]
16.005: (goto changeoffice eiffel)  [5.000]
21.006: (sightseeing eiffel dollar)  [30.000]
51.007: (goto eiffel supermarket)  [5.000]
56.008: (buy_snacks supermarket dollar)  [1.000]
57.009: (goto supermarket bank1)  [5.000]
62.010: (withdraw_pound bank1 sterling)  [2.000]
64.011: (goto bank1 bank2)  [5.000]
69.012: (withdraw_pound bank2 sterling)  [2.000]
71.013: (goto bank2 bank3)  [5.000]
76.014: (withdraw_dollar bank3 dollar)  [2.000]
78.015: (goto bank3 bank5)  [5.000]
83.016: (withdraw_euro bank5 euro)  [2.000]
85.017: (withdraw_euro bank5 euro)  [2.000]
87.018: (check_pocket euro)  [0.001]
87.020: (check_pocket sterling)  [0.001]
87.022: (goto bank5 shop)  [5.000]
92.023: (buy_shoes shop dollar)  [1.000]
93.024: (goto shop bank4)  [5.000]
98.025: (withdraw_dollar bank4 dollar)  [2.000]
100.026: (check_pocket dollar)  [0.001]
100.028: (goto bank4 pub)  [5.000]

 Execution time of Domain\Problem 11 

00:03:36.1855486

 DOMAIN/PROBLEM 12 

File: .\cashpoint\domain12.pddl
File: .\cashpoint\p12.pddl
Number of literals: 18
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (maxwithdraw bank1 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank2 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank3 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank4 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank5 euro) are preferable
Have identified that bigger values of (inpocket dollar) are preferable
Have identified that bigger values of (inpocket sterling) are preferable
Have identified that bigger values of (inpocket euro) are preferable
Have identified that bigger values of (maxwithdraw bank1 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank2 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank1 euro) are preferable
Have identified that bigger values of (maxwithdraw bank2 euro) are preferable
Have identified that bigger values of (maxwithdraw bank3 euro) are preferable
Have identified that bigger values of (maxwithdraw bank4 euro) are preferable
Have identified that bigger values of (maxwithdraw bank3 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank4 sterling) are preferable
Have identified that bigger values of (maxwithdraw bank5 dollar) are preferable
Have identified that bigger values of (maxwithdraw bank5 sterling) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
76% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 29.000
b (28.000 | 5.000)b (27.000 | 12.002)b (26.000 | 12.002)b (25.000 | 14.003)b (24.000 | 49.005)b (23.000 | 54.006)b (22.000 | 61.008)
Resorting to best-first search
b (28.000 | 5.000)b (27.000 | 7.001)b (26.000 | 7.001)b (25.000 | 9.002)b (23.000 | 12.002)b (22.000 | 51.006)b (21.000 | 56.007)b (20.000 | 56.007)b (19.000 | 57.008)b (18.000 | 62.009)b (17.000 | 64.010)b (16.000 | 64.010)b (15.000 | 66.011)b (14.000 | 71.012)b (13.000 | 78.014)b (12.000 | 78.014)b (11.000 | 85.016)b (10.000 | 90.017)b (9.000 | 92.020)b (8.000 | 92.020)b (7.000 | 105.024)b (6.000 | 105.024)b (5.000 | 110.025)b (4.000 | 115.026)b (4.000 | 114.029)b (3.000 | 114.029)b (2.000 | 114.031)b (1.000 | 114.031);;;; Solution Found
; States evaluated: 3339
; Cost: 119.032
0.000: (goto home bank1)  [5.000]
5.001: (withdraw_pound bank1 sterling)  [2.000]
7.002: (goto bank1 changeoffice)  [5.000]
12.003: (exchange_currencies changeoffice sterling euro)  [2.000]
14.004: (exchange_currencies changeoffice euro dollar)  [2.000]
16.005: (goto changeoffice eiffel)  [5.000]
21.006: (sightseeing eiffel dollar)  [30.000]
51.007: (goto eiffel supermarket)  [5.000]
56.008: (buy_snacks supermarket dollar)  [1.000]
57.009: (goto supermarket bank1)  [5.000]
62.010: (withdraw_pound bank1 sterling)  [2.000]
64.011: (goto bank1 bank2)  [5.000]
69.012: (withdraw_pound bank2 sterling)  [2.000]
71.013: (goto bank2 bank3)  [5.000]
76.014: (withdraw_dollar bank3 dollar)  [2.000]
78.015: (goto bank3 changeoffice)  [5.000]
83.016: (exchange_currencies changeoffice dollar euro)  [2.000]
85.017: (goto changeoffice bank2)  [5.000]
90.018: (withdraw_pound bank2 sterling)  [2.000]
92.019: (check_pocket sterling)  [0.001]
92.021: (goto bank2 bank3)  [5.000]
97.022: (withdraw_dollar bank3 dollar)  [2.000]
99.023: (goto bank3 shop)  [5.000]
104.024: (buy_shoes shop dollar)  [1.000]
105.025: (goto shop bank3)  [5.000]
110.026: (withdraw_dollar bank3 dollar)  [2.000]
112.027: (check_pocket euro)  [0.001]
112.029: (withdraw_dollar bank3 dollar)  [2.000]
114.030: (check_pocket dollar)  [0.001]
114.032: (goto bank3 pub)  [5.000]

 Execution time of Domain\Problem 12 

00:04:16.4626950

 Execution time of Domain\Problem 1 

00:00:00.1317425

 Execution time of Domain\Problem 2  

00:00:00.1082924

 Execution time of Domain\Problem 3 

00:00:00.1271196

 Execution time of Domain\Problem 4  

00:00:01.2518555

 Execution time of Domain\Problem 5 
 
00:00:00.6511392

 Execution time of Domain\Problem 6 
 
00:00:06.4289873

 Execution time of Domain\Problem 7 
 
00:02:20.3360742

 Execution time of Domain\Problem 8 
 
00:04:12.7859856

 Execution time of Domain\Problem 9 

00:01:40.3316267

 Execution time of Domain\Problem 10 

00:01:57.4538094

 Execution time of Domain\Problem 11 
 
00:03:36.1855486

 Execution time of Domain\Problem 12 
 
00:04:16.4626950
