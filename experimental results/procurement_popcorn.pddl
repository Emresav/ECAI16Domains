the results of procurement POPCORN_v2 tests 

 POPCORN_v2........ DOMAIN/PROBLEM 3 

File: .\procurement\domain3.pddl
File: .\procurement\p3.pddl
Number of literals: 55
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
84% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 31.000
b (30.000 | 5.000)b (16.000 | 11.002)b (15.000 | 11.002)b (14.000 | 16.003)b (12.000 | 17.004)b (11.000 | 17.004)b (10.000 | 22.005)b (8.000 | 23.006)b (7.000 | 23.006)b (6.000 | 28.007)b (4.000 | 29.008)b (3.000 | 29.008)b (2.000 | 34.009)b (1.000 | 35.010);;;; Solution Found
; States evaluated: 20
; Cost: 35.010
0.000: (go_to home workshop3)  [5.000]
5.001: (go_to workshop3 homedepot)  [5.000]
10.002: (supply_raw_material i d e j k homedepot)  [1.000]
11.003: (go_to homedepot workshop3)  [5.000]
16.004: (produce_item_b i j k b workshop3)  [1.000]
17.005: (go_to workshop3 workshop2)  [5.000]
22.006: (produce_item_c c d e workshop2)  [1.000]
23.007: (go_to workshop2 workshop1)  [5.000]
28.008: (produce_item_a a b c workshop1)  [1.000]
29.009: (go_to workshop1 customer1)  [5.000]
34.010: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 3 
00:00:00.3425387

 DOMAIN/PROBLEM 4 

File: .\procurement\domain4.pddl
File: .\procurement\p4.pddl
Number of literals: 64
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
86% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 37.000
b (36.000 | 5.000)b (22.000 | 11.002)b (21.000 | 11.002)b (20.000 | 16.003)b (18.000 | 17.004)b (17.000 | 17.004)b (16.000 | 22.005)b (11.000 | 23.006)b (10.000 | 23.006)b (9.000 | 28.007)b (7.000 | 29.008)b (6.000 | 29.008)b (5.000 | 35.010)b (4.000 | 35.010)b (3.000 | 40.011)b (2.000 | 45.012)b (1.000 | 46.013);;;; Solution Found
; States evaluated: 26
; Cost: 46.013
0.000: (go_to home workshop3)  [5.000]
5.001: (go_to workshop3 homedepot)  [5.000]
10.002: (supply_raw_material i d e j k homedepot)  [1.000]
11.003: (go_to homedepot workshop3)  [5.000]
16.004: (produce_item_b i j k b workshop3)  [1.000]
17.005: (go_to workshop3 workshop2)  [5.000]
22.006: (produce_item_c c d e workshop2)  [1.000]
23.007: (go_to workshop2 workshop1)  [5.000]
28.008: (produce_item_a a b c workshop1)  [1.000]
29.009: (go_to workshop1 customer2)  [5.000]
34.010: (deliver_to_customer c customer2)  [1.000]
35.011: (go_to customer2 home)  [5.000]
40.012: (go_to home customer1)  [5.000]
45.013: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 4 
00:00:00.5310494

 DOMAIN/PROBLEM 5 

File: .\procurement\domain5.pddl
File: .\procurement\p5.pddl
Number of literals: 89
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
Have identified that bigger values of (stock l) are preferable
Have identified that bigger values of (stock n) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
87% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 43.000
b (42.000 | 5.000)b (25.000 | 11.002)b (24.000 | 11.002)b (23.000 | 16.003)b (21.000 | 17.004)b (20.000 | 17.004)b (15.000 | 18.005)b (14.000 | 18.005)b (13.000 | 23.006)b (11.000 | 24.007)b (10.000 | 24.007)b (9.000 | 29.008)b (7.000 | 30.009)b (6.000 | 30.009)b (5.000 | 36.011)b (4.000 | 36.011)b (3.000 | 41.012)b (2.000 | 46.013)b (1.000 | 47.014);;;; Solution Found
; States evaluated: 28
; Cost: 47.014
0.000: (go_to home workshop3)  [5.000]
5.001: (go_to workshop3 homedepot)  [5.000]
10.002: (supply_raw_material i e j k l n homedepot)  [1.000]
11.003: (go_to homedepot workshop3)  [5.000]
16.004: (produce_item_d l n d workshop3)  [1.000]
17.005: (produce_item_b i j k b workshop3)  [1.000]
18.006: (go_to workshop3 workshop2)  [5.000]
23.007: (produce_item_c c d e workshop2)  [1.000]
24.008: (go_to workshop2 workshop1)  [5.000]
29.009: (produce_item_a a b c workshop1)  [1.000]
30.010: (go_to workshop1 customer2)  [5.000]
35.011: (deliver_to_customer b customer2)  [1.000]
36.012: (go_to customer2 home)  [5.000]
41.013: (go_to home customer1)  [5.000]
46.014: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 5 
00:00:00.8125242

 DOMAIN/PROBLEM 6 

File: .\procurement\domain6.pddl
File: .\procurement\p6.pddl
Number of literals: 89
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
Have identified that bigger values of (stock l) are preferable
Have identified that bigger values of (stock n) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
84% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 54.000
b (53.000 | 5.000)b (36.000 | 11.002)b (35.000 | 11.002)b (34.000 | 16.003)b (29.000 | 17.004)b (28.000 | 17.004)b (23.000 | 18.005)b (22.000 | 18.005)b (21.000 | 23.006)b (16.000 | 24.007)b (15.000 | 24.007)b (14.000 | 29.008)b (12.000 | 30.009)b (11.000 | 30.009)b (10.000 | 36.011)b (9.000 | 36.011)b (8.000 | 37.012)b (7.000 | 37.012)b (6.000 | 42.013)b (5.000 | 48.015)b (4.000 | 48.015)b (3.000 | 53.016)b (2.000 | 58.017)b (1.000 | 59.018);;;; Solution Found
; States evaluated: 37
; Cost: 59.018
0.000: (go_to home workshop3)  [5.000]
5.001: (go_to workshop3 homedepot)  [5.000]
10.002: (supply_raw_material i e j k l n homedepot)  [1.000]
11.003: (go_to homedepot workshop3)  [5.000]
16.004: (produce_item_d l n d workshop3)  [1.000]
17.005: (produce_item_b i j k b workshop3)  [1.000]
18.006: (go_to workshop3 workshop2)  [5.000]
23.007: (produce_item_c c d e workshop2)  [1.000]
24.008: (go_to workshop2 workshop1)  [5.000]
29.009: (produce_item_a a b c workshop1)  [1.000]
30.010: (go_to workshop1 customer3)  [5.000]
35.011: (deliver_to_customer d customer3)  [1.000]
36.012: (deliver_to_customer c customer3)  [1.000]
37.013: (go_to customer3 home)  [5.000]
42.014: (go_to home customer2)  [5.000]
47.015: (deliver_to_customer b customer2)  [1.000]
48.016: (go_to customer2 home)  [5.000]
53.017: (go_to home customer1)  [5.000]
58.018: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 6 
00:00:01.2889207

 DOMAIN/PROBLEM 7 

File: .\procurement\domain7.pddl
File: .\procurement\p7.pddl
Number of literals: 118
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock l) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
Have identified that bigger values of (stock n) are preferable
Have identified that bigger values of (stock m) are preferable
Have identified that bigger values of (stock f) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
88% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 53.000
b (52.000 | 5.000)b (32.000 | 11.002)b (31.000 | 11.002)b (30.000 | 16.003)b (22.000 | 22.005)b (21.000 | 22.005)b (19.000 | 28.007)b (18.000 | 28.007)b (17.000 | 33.008)b (15.000 | 34.009)b (14.000 | 34.009)b (13.000 | 39.010)b (11.000 | 40.011)b (10.000 | 40.011)b (9.000 | 45.012)b (7.000 | 46.013)b (6.000 | 46.013)b (5.000 | 52.015)b (4.000 | 52.015)b (3.000 | 57.016)b (2.000 | 62.017)b (1.000 | 63.018);;;; Solution Found
; States evaluated: 42
; Cost: 63.018
0.000: (go_to home workshop4)  [5.000]
5.001: (go_to workshop4 homedepot)  [5.000]
10.002: (supply_raw_material i e j k n m f homedepot)  [1.000]
11.003: (go_to homedepot workshop4)  [5.000]
16.004: (go_to workshop4 workshop3)  [5.000]
21.005: (produce_item_b i j k b workshop3)  [1.000]
22.006: (go_to workshop3 workshop4)  [5.000]
27.007: (produce_item_l l m f b workshop4)  [1.000]
28.008: (go_to workshop4 workshop3)  [5.000]
33.009: (produce_item_d l n d workshop3)  [1.000]
34.010: (go_to workshop3 workshop2)  [5.000]
39.011: (produce_item_c c d e workshop2)  [1.000]
40.012: (go_to workshop2 workshop1)  [5.000]
45.013: (produce_item_a a b c workshop1)  [1.000]
46.014: (go_to workshop1 customer2)  [5.000]
51.015: (deliver_to_customer b customer2)  [1.000]
52.016: (go_to customer2 home)  [5.000]
57.017: (go_to home customer1)  [5.000]
62.018: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 7 
00:00:01.3921210

 DOMAIN/PROBLEM 8 

File: .\procurement\domain8.pddl
File: .\procurement\p8.pddl
Number of literals: 118
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock l) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
Have identified that bigger values of (stock n) are preferable
Have identified that bigger values of (stock m) are preferable
Have identified that bigger values of (stock f) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
87% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 59.000
b (58.000 | 5.000)b (38.000 | 11.002)b (37.000 | 11.002)b (36.000 | 16.003)b (28.000 | 22.005)b (27.000 | 22.005)b (25.000 | 28.007)b (24.000 | 28.007)b (23.000 | 33.008)b (21.000 | 34.009)b (20.000 | 34.009)b (19.000 | 39.010)b (14.000 | 40.011)b (13.000 | 40.011)b (12.000 | 45.012)b (11.000 | 51.014)b (9.000 | 56.015)b (7.000 | 93.028)b (6.000 | 93.028)b (5.000 | 99.030)b (4.000 | 99.030)b (3.000 | 104.031)b (2.000 | 109.032)b (1.000 | 110.033);;;; Solution Found
; States evaluated: 357
; Cost: 110.033
0.000: (go_to home workshop4)  [5.000]
5.001: (go_to workshop4 homedepot)  [5.000]
10.002: (supply_raw_material i e j k n m f homedepot)  [1.000]
11.003: (go_to homedepot workshop4)  [5.000]
16.004: (go_to workshop4 workshop3)  [5.000]
21.005: (produce_item_b i j k b workshop3)  [1.000]
22.006: (go_to workshop3 workshop4)  [5.000]
27.007: (produce_item_l l m f b workshop4)  [1.000]
28.008: (go_to workshop4 workshop3)  [5.000]
33.009: (produce_item_d l n d workshop3)  [1.000]
34.010: (go_to workshop3 workshop2)  [5.000]
39.011: (produce_item_c c d e workshop2)  [1.000]
40.012: (go_to workshop2 workshop1)  [5.000]
45.013: (go_to workshop1 customer3)  [5.000]
50.014: (deliver_to_customer c customer3)  [1.000]
51.015: (go_to customer3 workshop1)  [5.000]
56.016: (produce_item_a a b c workshop1)  [1.000]
57.017: (go_to workshop1 homedepot)  [5.000]
62.018: (supply_raw_material i e j k n m f homedepot)  [1.000]
63.019: (go_to homedepot workshop3)  [5.000]
68.020: (produce_item_b i j k b workshop3)  [1.000]
69.021: (go_to workshop3 workshop4)  [5.000]
74.022: (produce_item_l l m f b workshop4)  [1.000]
75.023: (go_to workshop4 workshop3)  [5.000]
80.024: (produce_item_d l n d workshop3)  [1.000]
81.025: (go_to workshop3 workshop2)  [5.000]
86.026: (produce_item_c c d e workshop2)  [1.000]
87.027: (go_to workshop2 workshop1)  [5.000]
92.028: (produce_item_a a b c workshop1)  [1.000]
93.029: (go_to workshop1 customer2)  [5.000]
98.030: (deliver_to_customer b customer2)  [1.000]
99.031: (go_to customer2 home)  [5.000]
104.032: (go_to home customer1)  [5.000]
109.033: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 8 
00:00:51.2623830

 DOMAIN/PROBLEM 9 

File: .\procurement\domain9.pddl
File: .\procurement\p9.pddl
Number of literals: 136
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock l) are preferable
Have identified that bigger values of (stock f) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
Have identified that bigger values of (stock n) are preferable
Have identified that bigger values of (stock m) are preferable
Have identified that bigger values of (stock g) are preferable
Have identified that bigger values of (stock h) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
87% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 59.000
b (58.000 | 5.000)b (35.000 | 11.002)b (34.000 | 11.002)b (33.000 | 16.003)b (25.000 | 22.005)b (24.000 | 22.005)b (22.000 | 28.007)b (21.000 | 28.007)b (19.000 | 34.009)b (18.000 | 34.009)b (17.000 | 39.010)b (15.000 | 40.011)b (14.000 | 40.011)b (13.000 | 45.012)b (11.000 | 46.013)b (10.000 | 46.013)b (9.000 | 51.014)b (7.000 | 52.015)b (6.000 | 52.015)b (5.000 | 58.017)b (4.000 | 58.017)b (3.000 | 63.018)b (2.000 | 68.019)b (1.000 | 69.020);;;; Solution Found
; States evaluated: 49
; Cost: 69.020
0.000: (go_to home workshop4)  [5.000]
5.001: (go_to workshop4 homedepot)  [5.000]
10.002: (supply_raw_material i e j k n m g h homedepot)  [1.000]
11.003: (go_to homedepot workshop4)  [5.000]
16.004: (go_to workshop4 workshop3)  [5.000]
21.005: (produce_item_b i j k b workshop3)  [1.000]
22.006: (go_to workshop3 workshop2)  [5.000]
27.007: (produce_item_f g h f workshop2)  [1.000]
28.008: (go_to workshop2 workshop4)  [5.000]
33.009: (produce_item_l l m f b workshop4)  [1.000]
34.010: (go_to workshop4 workshop3)  [5.000]
39.011: (produce_item_d l n d workshop3)  [1.000]
40.012: (go_to workshop3 workshop2)  [5.000]
45.013: (produce_item_c c d e workshop2)  [1.000]
46.014: (go_to workshop2 workshop1)  [5.000]
51.015: (produce_item_a a b c workshop1)  [1.000]
52.016: (go_to workshop1 customer2)  [5.000]
57.017: (deliver_to_customer b customer2)  [1.000]
58.018: (go_to customer2 home)  [5.000]
63.019: (go_to home customer1)  [5.000]
68.020: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 9 
00:00:02.3192219

 DOMAIN/PROBLEM 10 

File: .\procurement\domain10.pddl
File: .\procurement\p10.pddl
Number of literals: 136
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock l) are preferable
Have identified that bigger values of (stock f) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
Have identified that bigger values of (stock n) are preferable
Have identified that bigger values of (stock m) are preferable
Have identified that bigger values of (stock g) are preferable
Have identified that bigger values of (stock h) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
86% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 64.000
b (63.000 | 5.000)b (40.000 | 11.002)b (39.000 | 11.002)b (38.000 | 16.003)b (30.000 | 22.005)b (29.000 | 22.005)b (27.000 | 28.007)b (26.000 | 28.007)b (21.000 | 34.009)b (20.000 | 34.009)b (19.000 | 39.010)b (17.000 | 40.011)b (16.000 | 40.011)b (15.000 | 45.012)b (13.000 | 46.013)b (12.000 | 46.013)b (11.000 | 51.014)b (9.000 | 52.015)b (8.000 | 52.015)b (7.000 | 58.017)b (6.000 | 58.017)b (4.000 | 65.020)b (3.000 | 77.024)b (2.000 | 82.025)b (1.000 | 83.026);;;; Solution Found
; States evaluated: 107
; Cost: 83.026
0.000: (go_to home workshop4)  [5.000]
5.001: (go_to workshop4 homedepot)  [5.000]
10.002: (supply_raw_material i e j k n m g h homedepot)  [1.000]
11.003: (go_to homedepot workshop4)  [5.000]
16.004: (go_to workshop4 workshop3)  [5.000]
21.005: (produce_item_b i j k b workshop3)  [1.000]
22.006: (go_to workshop3 workshop2)  [5.000]
27.007: (produce_item_f g h f workshop2)  [1.000]
28.008: (go_to workshop2 workshop4)  [5.000]
33.009: (produce_item_l l m f b workshop4)  [1.000]
34.010: (go_to workshop4 workshop3)  [5.000]
39.011: (produce_item_d l n d workshop3)  [1.000]
40.012: (go_to workshop3 workshop2)  [5.000]
45.013: (produce_item_c c d e workshop2)  [1.000]
46.014: (go_to workshop2 workshop1)  [5.000]
51.015: (produce_item_a a b c workshop1)  [1.000]
52.016: (go_to workshop1 customer3)  [5.000]
57.017: (deliver_to_customer l customer3)  [1.000]
58.018: (deliver_to_customer b customer3)  [1.000]
59.019: (go_to customer3 workshop1)  [5.000]
64.020: (produce_item_a a b c workshop1)  [1.000]
65.021: (go_to workshop1 homedepot)  [5.000]
70.022: (supply_raw_material i e j k n m g h homedepot)  [1.000]
71.023: (go_to homedepot workshop3)  [5.000]
76.024: (produce_item_b i j k b workshop3)  [1.000]
77.025: (go_to workshop3 customer1)  [5.000]
82.026: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 10 
00:00:12.6647300

 DOMAIN/PROBLEM 11 

File: .\procurement\domain11.pddl
File: .\procurement\p11.pddl
Number of literals: 136
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock l) are preferable
Have identified that bigger values of (stock f) are preferable
Have identified that bigger values of (stock g) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
Have identified that bigger values of (stock n) are preferable
Have identified that bigger values of (stock m) are preferable
Have identified that bigger values of (stock h) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
86% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 62.000
b (61.000 | 5.000)b (38.000 | 11.002)b (37.000 | 11.002)b (36.000 | 16.003)b (34.000 | 17.004)b (33.000 | 17.004)b (25.000 | 23.006)b (24.000 | 23.006)b (22.000 | 29.008)b (21.000 | 29.008)b (19.000 | 35.010)b (18.000 | 35.010)b (17.000 | 40.011)b (15.000 | 41.012)b (14.000 | 41.012)b (13.000 | 46.013)b (11.000 | 47.014)b (10.000 | 47.014)b (9.000 | 52.015)b (7.000 | 53.016)b (6.000 | 53.016)b (5.000 | 59.018)b (4.000 | 59.018)b (3.000 | 64.019)b (2.000 | 69.020)b (1.000 | 70.021);;;; Solution Found
; States evaluated: 51
; Cost: 70.021
0.000: (go_to home workshop4)  [5.000]
5.001: (go_to workshop4 homedepot)  [5.000]
10.002: (supply_raw_material i e j k n m h homedepot)  [1.000]
11.003: (go_to homedepot workshop4)  [5.000]
16.004: (produce_item_g e n j g workshop4)  [1.000]
17.005: (go_to workshop4 workshop3)  [5.000]
22.006: (produce_item_b i j k b workshop3)  [1.000]
23.007: (go_to workshop3 workshop2)  [5.000]
28.008: (produce_item_f g h f workshop2)  [1.000]
29.009: (go_to workshop2 workshop4)  [5.000]
34.010: (produce_item_l l m f b workshop4)  [1.000]
35.011: (go_to workshop4 workshop3)  [5.000]
40.012: (produce_item_d l n d workshop3)  [1.000]
41.013: (go_to workshop3 workshop2)  [5.000]
46.014: (produce_item_c c d e workshop2)  [1.000]
47.015: (go_to workshop2 workshop1)  [5.000]
52.016: (produce_item_a a b c workshop1)  [1.000]
53.017: (go_to workshop1 customer2)  [5.000]
58.018: (deliver_to_customer b customer2)  [1.000]
59.019: (go_to customer2 home)  [5.000]
64.020: (go_to home customer1)  [5.000]
69.021: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 11 
00:00:02.7978791

 DOMAIN/PROBLEM 12 

File: .\procurement\domain12.pddl
File: .\procurement\p12.pddl
Number of literals: 136
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock a) are preferable
Have identified that bigger values of (stock b) are preferable
Have identified that bigger values of (stock c) are preferable
Have identified that bigger values of (stock d) are preferable
Have identified that bigger values of (stock l) are preferable
Have identified that bigger values of (stock f) are preferable
Have identified that bigger values of (stock g) are preferable
Have identified that bigger values of (stock e) are preferable
Have identified that bigger values of (stock i) are preferable
Have identified that bigger values of (stock j) are preferable
Have identified that bigger values of (stock k) are preferable
Have identified that bigger values of (stock n) are preferable
Have identified that bigger values of (stock m) are preferable
Have identified that bigger values of (stock h) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
85% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 67.000
b (66.000 | 5.000)b (43.000 | 11.002)b (42.000 | 11.002)b (41.000 | 16.003)b (39.000 | 17.004)b (38.000 | 17.004)b (30.000 | 23.006)b (29.000 | 23.006)b (27.000 | 29.008)b (26.000 | 29.008)b (21.000 | 35.010)b (20.000 | 35.010)b (19.000 | 40.011)b (17.000 | 41.012)b (16.000 | 41.012)b (15.000 | 46.013)b (13.000 | 47.014)b (12.000 | 47.014)b (11.000 | 52.015)b (9.000 | 53.016)b (8.000 | 53.016)b (7.000 | 59.018)b (6.000 | 59.018)b (4.000 | 66.021)b (3.000 | 78.025)b (2.000 | 83.026)b (1.000 | 84.027);;;; Solution Found
; States evaluated: 83
; Cost: 84.027
0.000: (go_to home workshop4)  [5.000]
5.001: (go_to workshop4 homedepot)  [5.000]
10.002: (supply_raw_material i e j k n m h homedepot)  [1.000]
11.003: (go_to homedepot workshop4)  [5.000]
16.004: (produce_item_g e n j g workshop4)  [1.000]
17.005: (go_to workshop4 workshop3)  [5.000]
22.006: (produce_item_b i j k b workshop3)  [1.000]
23.007: (go_to workshop3 workshop2)  [5.000]
28.008: (produce_item_f g h f workshop2)  [1.000]
29.009: (go_to workshop2 workshop4)  [5.000]
34.010: (produce_item_l l m f b workshop4)  [1.000]
35.011: (go_to workshop4 workshop3)  [5.000]
40.012: (produce_item_d l n d workshop3)  [1.000]
41.013: (go_to workshop3 workshop2)  [5.000]
46.014: (produce_item_c c d e workshop2)  [1.000]
47.015: (go_to workshop2 workshop1)  [5.000]
52.016: (produce_item_a a b c workshop1)  [1.000]
53.017: (go_to workshop1 customer3)  [5.000]
58.018: (deliver_to_customer l customer3)  [1.000]
59.019: (deliver_to_customer b customer3)  [1.000]
60.020: (go_to customer3 workshop1)  [5.000]
65.021: (produce_item_a a b c workshop1)  [1.000]
66.022: (go_to workshop1 homedepot)  [5.000]
71.023: (supply_raw_material i e j k n m h homedepot)  [1.000]
72.024: (go_to homedepot workshop3)  [5.000]
77.025: (produce_item_b i j k b workshop3)  [1.000]
78.026: (go_to workshop3 customer1)  [5.000]
83.027: (deliver_to_customer a customer1)  [1.000]

 Execution time of Domain\Problem 12 
00:00:09.1165119

 Execution time of Domain\Problem 3 
00:00:00.3425387

 Execution time of Domain\Problem 4 
00:00:00.5310494

 Execution time of Domain\Problem 5 
00:00:00.8125242

 Execution time of Domain\Problem 6 
00:00:01.2889207

 Execution time of Domain\Problem 7 
00:00:01.3921210

 Execution time of Domain\Problem 8 
00:00:51.2623830

 Execution time of Domain\Problem 9 
00:00:02.3192219

 Execution time of Domain\Problem 10 
00:00:12.6647300

 Execution time of Domain\Problem 11 
00:00:02.7978791

 Execution time of Domain\Problem 12 
00:00:09.1165119
