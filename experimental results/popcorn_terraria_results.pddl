the results of terraria tests in POPcorn 

 POPCORN_v4 


 DOMAIN/PROBLEM 1 

File: .\terraria_capacity\domain1.pddl
File: .\terraria_capacity\p1.pddl
Number of literals: 4
Constructing lookup tables:
Post filtering unreachable actions: 
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock wood1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
None of the ground temporal actions in this problem have been recognised as compression-safe
Initial heuristic = 16.000
b (11.000 | 10.000)b (10.000 | 10.000)b (9.000 | 15.001)b (7.000 | 15.001)b (6.000 | 22.002)b (5.000 | 22.002)b (4.000 | 25.003)
Resorting to best-first search
b (15.000 | 5.000)b (11.000 | 10.000)b (10.000 | 10.000)b (9.000 | 15.001)b (7.000 | 15.001)b (6.000 | 22.002)b (5.000 | 22.002)b (4.000 | 25.003)b (2.000 | 38.006)b (1.000 | 38.008);;;; Solution Found
; States evaluated: 231
; Cost: 38.008
0.000: (find_resources cobweb1 iron1 chain1)  [10.000]
10.001: (cut_a_tree wood1)  [5.000]
15.002: (assemble_a_sawmill wood1 iron1 chain1)  [7.000]
22.003: (cut_a_tree wood1)  [5.000]
27.004: (assemble_a_loom wood1)  [5.000]
32.005: (make_silk silk1 cobweb1)  [3.000]
35.006: (assemble_beds wood1 silk1 bed1)  [3.000]
38.007: (place_beds bed1)  [0.001]

 Execution time of Domain\Problem 1 
00:00:02.2394095

 DOMAIN/PROBLEM 2 

File: .\terraria_capacity\domain2.pddl
File: .\terraria_capacity\p2.pddl
Number of literals: 4
Constructing lookup tables:
Post filtering unreachable actions: 
No semaphore facts found, returning
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock wood1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
None of the ground temporal actions in this problem have been recognised as compression-safe
Initial heuristic = 12.000
b (11.000 | 5.000)b (9.000 | 5.000)b (6.000 | 15.001)b (5.000 | 22.002)b (4.000 | 22.002)b (3.000 | 25.003)
Resorting to best-first search
b (11.000 | 5.000)b (9.000 | 5.000)b (6.000 | 15.001)b (5.000 | 22.002)b (4.000 | 22.002)b (3.000 | 25.003)b (1.000 | 48.007);;;; Solution Found
; States evaluated: 529
; Cost: 48.008
0.000: (cut_a_tree wood1)  [5.000]
5.001: (find_resources cobweb1 iron1 chain1)  [10.000]
15.002: (assemble_a_sawmill wood1 iron1 chain1)  [7.000]
22.003: (cut_a_tree wood1)  [5.000]
27.004: (find_resources cobweb1 iron1 chain1)  [10.000]
37.005: (assemble_a_loom wood1)  [5.000]
42.006: (make_silk silk1 cobweb1)  [3.000]
45.007: (assemble_beds wood1 silk1 bed1)  [3.000]
48.008: (finish bed1) 

 Execution time of Domain\Problem 2 
00:00:05.3807790

 DOMAIN/PROBLEM 3 

File: .\terraria_capacity\domain3.pddl
File: .\terraria_capacity\p3.pddl
Number of literals: 4
Constructing lookup tables:
Post filtering unreachable actions: 
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock wood1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
None of the ground temporal actions in this problem have been recognised as compression-safe
Initial heuristic = 27.000
b (22.000 | 2.000)b (21.000 | 2.000)b (13.000 | 4.001)b (12.000 | 4.001)b (11.000 | 9.002)b (10.000 | 9.002)b (9.000 | 14.003)b (8.000 | 14.003)b (6.000 | 31.007)b (5.000 | 31.007)b (3.000 | 129.032)b (2.000 | 129.032)b (1.000 | 129.034);;;; Solution Found
; States evaluated: 224
; Cost: 129.034
0.000: (cut_a_tree wood1)  [2.000]
2.001: (find_resources cobweb1 iron1 chain1)  [2.000]
4.002: (assemble_a_sawmill wood1 iron1 chain1)  [5.000]
9.003: (assemble_a_loom wood1)  [5.000]
14.004: (make_silk silk1 cobweb1)  [5.000]
19.005: (make_silk silk1 cobweb1)  [5.000]
24.006: (find_resources cobweb1 iron1 chain1)  [2.000]
26.007: (make_silk silk1 cobweb1)  [5.000]
31.008: (assemble_beds wood1 silk1 bed1)  [5.000]
36.009: (cut_a_tree wood1)  [2.000]
38.010: (find_resources cobweb1 iron1 chain1)  [2.000]
40.011: (make_silk silk1 cobweb1)  [5.000]
45.012: (make_silk silk1 cobweb1)  [5.000]
50.013: (find_resources cobweb1 iron1 chain1)  [2.000]
52.014: (make_silk silk1 cobweb1)  [5.000]
57.015: (assemble_beds wood1 silk1 bed1)  [5.000]
62.016: (make_silk silk1 cobweb1)  [5.000]
67.017: (find_resources cobweb1 iron1 chain1)  [2.000]
69.018: (make_silk silk1 cobweb1)  [5.000]
74.019: (find_resources cobweb1 iron1 chain1)  [2.000]
76.020: (make_silk silk1 cobweb1)  [5.000]
81.021: (assemble_beds wood1 silk1 bed1)  [5.000]
86.022: (make_silk silk1 cobweb1)  [5.000]
91.023: (find_resources cobweb1 iron1 chain1)  [2.000]
93.024: (make_silk silk1 cobweb1)  [5.000]
98.025: (assemble_beds wood1 silk1 bed1)  [5.000]
103.026: (cut_a_tree wood1)  [2.000]
105.027: (find_resources cobweb1 iron1 chain1)  [2.000]
107.028: (make_silk silk1 cobweb1)  [5.000]
112.029: (make_silk silk1 cobweb1)  [5.000]
117.030: (find_resources cobweb1 iron1 chain1)  [2.000]
119.031: (make_silk silk1 cobweb1)  [5.000]
124.032: (assemble_beds wood1 silk1 bed1)  [5.000]
129.033: (place_beds bed1)  [0.001]

 Execution time of Domain\Problem 3 
00:00:35.8197941

 DOMAIN/PROBLEM 4 

File: .\terraria_capacity\domain4.pddl
File: .\terraria_capacity\p4.pddl
Number of literals: 8
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%] [140%] [150%] [160%] [170%] [180%] [190%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%] [140%] [150%] [160%] [170%] [180%] [190%]
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock wood1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
63% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 30.000
b (29.000 | 10.000)b (24.000 | 15.002)b (23.000 | 15.002)b (22.000 | 18.003)b (14.000 | 33.005)b (13.000 | 33.005)b (12.000 | 46.006)b (11.000 | 51.007)b (10.000 | 51.007)b (9.000 | 56.008)b (8.000 | 56.008)b (6.000 | 94.013)b (5.000 | 94.013)b (3.000 | 259.037)b (2.000 | 259.037)b (1.000 | 259.039);;;; Solution Found
; States evaluated: 103
; Cost: 259.039
0.000: (go_to home workshop)  [10.000]
10.001: (go_to workshop forest)  [3.000]
13.002: (cut_a_tree wood1 forest)  [2.000]
15.003: (go_to forest workshop)  [3.000]
18.004: (go_to workshop mine)  [13.000]
31.005: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
33.006: (go_to mine workshop)  [13.000]
46.007: (assemble_a_sawmill wood1 iron1 chain1 workshop)  [5.000]
51.008: (assemble_a_loom wood1 workshop)  [5.000]
56.009: (make_silk silk1 cobweb1 workshop)  [5.000]
61.010: (go_to workshop mine)  [13.000]
74.011: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
76.012: (go_to mine workshop)  [13.000]
89.013: (make_silk silk1 cobweb1 workshop)  [5.000]
94.014: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
99.015: (go_to workshop mine)  [13.000]
112.016: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
114.017: (go_to mine workshop)  [13.000]
127.018: (make_silk silk1 cobweb1 workshop)  [5.000]
132.019: (make_silk silk1 cobweb1 workshop)  [5.000]
137.020: (go_to workshop mine)  [13.000]
150.021: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
152.022: (go_to mine workshop)  [13.000]
165.023: (make_silk silk1 cobweb1 workshop)  [5.000]
170.024: (go_to workshop forest)  [3.000]
173.025: (cut_a_tree wood1 forest)  [2.000]
175.026: (go_to forest workshop)  [3.000]
178.027: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
183.028: (make_silk silk1 cobweb1 workshop)  [5.000]
188.029: (go_to workshop mine)  [13.000]
201.030: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
203.031: (go_to mine workshop)  [13.000]
216.032: (make_silk silk1 cobweb1 workshop)  [5.000]
221.033: (go_to workshop mine)  [13.000]
234.034: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
236.035: (go_to mine workshop)  [13.000]
249.036: (make_silk silk1 cobweb1 workshop)  [5.000]
254.037: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
259.038: (place_beds bed1)  [0.001]

 Execution time of Domain\Problem 4 
00:00:07.3446749

 DOMAIN/PROBLEM 5 

File: .\terraria_capacity\domain5.pddl
File: .\terraria_capacity\p5.pddl
Number of literals: 8
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%] [140%] [150%] [160%] [170%] [180%] [190%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%] [140%] [150%] [160%] [170%] [180%] [190%]
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock wood1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
63% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 30.000
b (29.000 | 10.000)b (24.000 | 15.002)b (23.000 | 15.002)b (22.000 | 18.003)b (14.000 | 33.005)b (13.000 | 33.005)b (12.000 | 46.006)b (11.000 | 51.007)b (10.000 | 51.007)b (9.000 | 56.008)b (8.000 | 56.008)b (6.000 | 94.013)b (5.000 | 94.013)b (3.000 | 386.056)b (2.000 | 386.056)b (1.000 | 386.058);;;; Solution Found
; States evaluated: 170
; Cost: 386.058
0.000: (go_to home workshop)  [10.000]
10.001: (go_to workshop forest)  [3.000]
13.002: (cut_a_tree wood1 forest)  [2.000]
15.003: (go_to forest workshop)  [3.000]
18.004: (go_to workshop mine)  [13.000]
31.005: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
33.006: (go_to mine workshop)  [13.000]
46.007: (assemble_a_sawmill wood1 iron1 chain1 workshop)  [5.000]
51.008: (assemble_a_loom wood1 workshop)  [5.000]
56.009: (make_silk silk1 cobweb1 workshop)  [5.000]
61.010: (go_to workshop mine)  [13.000]
74.011: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
76.012: (go_to mine workshop)  [13.000]
89.013: (make_silk silk1 cobweb1 workshop)  [5.000]
94.014: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
99.015: (go_to workshop mine)  [13.000]
112.016: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
114.017: (go_to mine workshop)  [13.000]
127.018: (make_silk silk1 cobweb1 workshop)  [5.000]
132.019: (make_silk silk1 cobweb1 workshop)  [5.000]
137.020: (go_to workshop mine)  [13.000]
150.021: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
152.022: (go_to mine workshop)  [13.000]
165.023: (make_silk silk1 cobweb1 workshop)  [5.000]
170.024: (go_to workshop forest)  [3.000]
173.025: (cut_a_tree wood1 forest)  [2.000]
175.026: (go_to forest workshop)  [3.000]
178.027: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
183.028: (make_silk silk1 cobweb1 workshop)  [5.000]
188.029: (go_to workshop mine)  [13.000]
201.030: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
203.031: (go_to mine workshop)  [13.000]
216.032: (make_silk silk1 cobweb1 workshop)  [5.000]
221.033: (go_to workshop mine)  [13.000]
234.034: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
236.035: (go_to mine workshop)  [13.000]
249.036: (make_silk silk1 cobweb1 workshop)  [5.000]
254.037: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
259.038: (make_silk silk1 cobweb1 workshop)  [5.000]
264.039: (go_to workshop mine)  [13.000]
277.040: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
279.041: (go_to mine workshop)  [13.000]
292.042: (make_silk silk1 cobweb1 workshop)  [5.000]
297.043: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
302.044: (go_to workshop mine)  [13.000]
315.045: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
317.046: (go_to mine workshop)  [13.000]
330.047: (make_silk silk1 cobweb1 workshop)  [5.000]
335.048: (make_silk silk1 cobweb1 workshop)  [5.000]
340.049: (go_to workshop mine)  [13.000]
353.050: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
355.051: (go_to mine workshop)  [13.000]
368.052: (make_silk silk1 cobweb1 workshop)  [5.000]
373.053: (go_to workshop forest)  [3.000]
376.054: (cut_a_tree wood1 forest)  [2.000]
378.055: (go_to forest workshop)  [3.000]
381.056: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
386.057: (place_beds bed1)  [0.001]

 Execution time of Domain\Problem 5 
00:00:30.0208511

 DOMAIN/PROBLEM 6 

File: .\terraria_capacity\domain6.pddl
File: .\terraria_capacity\p6.pddl
Number of literals: 8
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%] [140%] [150%] [160%] [170%] [180%] [190%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%] [130%] [140%] [150%] [160%] [170%] [180%] [190%]
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock wood1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
63% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 30.000
b (29.000 | 10.000)b (24.000 | 15.002)b (23.000 | 15.002)b (22.000 | 18.003)b (14.000 | 33.005)b (13.000 | 33.005)b (12.000 | 46.006)b (11.000 | 51.007)b (10.000 | 51.007)b (9.000 | 56.008)b (8.000 | 56.008)b (6.000 | 127.017)b (5.000 | 127.017)b (3.000 | 475.066)b (2.000 | 475.066)b (1.000 | 475.068);;;; Solution Found
; States evaluated: 178
; Cost: 475.068
0.000: (go_to home workshop)  [10.000]
10.001: (go_to workshop forest)  [3.000]
13.002: (cut_a_tree wood1 forest)  [2.000]
15.003: (go_to forest workshop)  [3.000]
18.004: (go_to workshop mine)  [13.000]
31.005: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
33.006: (go_to mine workshop)  [13.000]
46.007: (assemble_a_sawmill wood1 iron1 chain1 workshop)  [5.000]
51.008: (assemble_a_loom wood1 workshop)  [5.000]
56.009: (make_silk silk1 cobweb1 workshop)  [5.000]
61.010: (go_to workshop mine)  [13.000]
74.011: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
76.012: (go_to mine workshop)  [13.000]
89.013: (make_silk silk1 cobweb1 workshop)  [5.000]
94.014: (go_to workshop mine)  [13.000]
107.015: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
109.016: (go_to mine workshop)  [13.000]
122.017: (make_silk silk1 cobweb1 workshop)  [5.000]
127.018: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
132.019: (make_silk silk1 cobweb1 workshop)  [5.000]
137.020: (go_to workshop mine)  [13.000]
150.021: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
152.022: (go_to mine workshop)  [13.000]
165.023: (make_silk silk1 cobweb1 workshop)  [5.000]
170.024: (go_to workshop mine)  [13.000]
183.025: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
185.026: (go_to mine workshop)  [13.000]
198.027: (make_silk silk1 cobweb1 workshop)  [5.000]
203.028: (go_to workshop forest)  [3.000]
206.029: (cut_a_tree wood1 forest)  [2.000]
208.030: (go_to forest workshop)  [3.000]
211.031: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
216.032: (go_to workshop mine)  [13.000]
229.033: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
231.034: (go_to mine workshop)  [13.000]
244.035: (make_silk silk1 cobweb1 workshop)  [5.000]
249.036: (go_to workshop mine)  [13.000]
262.037: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
264.038: (go_to mine workshop)  [13.000]
277.039: (make_silk silk1 cobweb1 workshop)  [5.000]
282.040: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
287.041: (go_to workshop mine)  [13.000]
300.042: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
302.043: (go_to mine workshop)  [13.000]
315.044: (make_silk silk1 cobweb1 workshop)  [5.000]
320.045: (go_to workshop mine)  [13.000]
333.046: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
335.047: (go_to mine workshop)  [13.000]
348.048: (make_silk silk1 cobweb1 workshop)  [5.000]
353.049: (go_to workshop mine)  [13.000]
366.050: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
368.051: (go_to mine workshop)  [13.000]
381.052: (make_silk silk1 cobweb1 workshop)  [5.000]
386.053: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
391.054: (go_to workshop mine)  [13.000]
404.055: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
406.056: (go_to mine workshop)  [13.000]
419.057: (make_silk silk1 cobweb1 workshop)  [5.000]
424.058: (make_silk silk1 cobweb1 workshop)  [5.000]
429.059: (go_to workshop mine)  [13.000]
442.060: (find_resources cobweb1 iron1 chain1 mine)  [2.000]
444.061: (go_to mine workshop)  [13.000]
457.062: (make_silk silk1 cobweb1 workshop)  [5.000]
462.063: (go_to workshop forest)  [3.000]
465.064: (cut_a_tree wood1 forest)  [2.000]
467.065: (go_to forest workshop)  [3.000]
470.066: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
475.067: (place_beds bed1)  [0.001]

 Execution time of Domain\Problem 6 
00:00:46.6145404

 DOMAIN/PROBLEM 7 

File: .\terraria_capacity\domain7.pddl
File: .\terraria_capacity\p7.pddl
Number of literals: 8
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock chest1) are preferable
Have identified that bigger values of (stock wood1) are preferable
Have identified that bigger values of (stock lead1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
60% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 42.000
b (41.000 | 10.000)b (33.000 | 15.002)b (32.000 | 15.002)b (31.000 | 18.003)b (17.000 | 41.005)b (16.000 | 41.005)b (15.000 | 54.006)b (13.000 | 59.007)b (12.000 | 59.007)b (11.000 | 64.008)b (10.000 | 64.008)b (9.000 | 69.009)b (8.000 | 69.009)b (6.000 | 115.014)b (5.000 | 179.024)b (3.000 | 271.034)b (2.000 | 271.034)b (1.000 | 271.036);;;; Solution Found
; States evaluated: 109
; Cost: 271.036
0.000: (go_to home workshop)  [10.000]
10.001: (go_to workshop forest)  [3.000]
13.002: (cut_a_tree wood1 forest)  [2.000]
15.003: (go_to forest workshop)  [3.000]
18.004: (go_to workshop mine)  [13.000]
31.005: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
41.006: (go_to mine workshop)  [13.000]
54.007: (produce_chests chest1 wood1 lead1 iron1 workshop)  [5.000]
59.008: (assemble_a_sawmill wood1 iron1 chain1 workshop)  [5.000]
64.009: (assemble_a_loom wood1 workshop)  [5.000]
69.010: (make_silk silk1 cobweb1 workshop)  [5.000]
74.011: (go_to workshop mine)  [13.000]
87.012: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
97.013: (go_to mine workshop)  [13.000]
110.014: (make_silk silk1 cobweb1 workshop)  [5.000]
115.015: (make_silk silk1 cobweb1 workshop)  [5.000]
120.016: (go_to workshop mine)  [13.000]
133.017: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
143.018: (go_to mine workshop)  [13.000]
156.019: (make_silk silk1 cobweb1 workshop)  [5.000]
161.020: (produce_chests chest1 wood1 lead1 iron1 workshop)  [5.000]
166.021: (produce_chests chest1 wood1 lead1 iron1 workshop)  [5.000]
171.022: (go_to workshop forest)  [3.000]
174.023: (cut_a_tree wood1 forest)  [2.000]
176.024: (go_to forest workshop)  [3.000]
179.025: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
184.026: (go_to workshop mine)  [13.000]
197.027: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
207.028: (go_to mine workshop)  [13.000]
220.029: (make_silk silk1 cobweb1 workshop)  [5.000]
225.030: (go_to workshop mine)  [13.000]
238.031: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
248.032: (go_to mine workshop)  [13.000]
261.033: (make_silk silk1 cobweb1 workshop)  [5.000]
266.034: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
271.035: (place_products bed1 chest1)  [0.001]

 Execution time of Domain\Problem 7 
00:00:11.1818339

 DOMAIN/PROBLEM 8 

File: .\terraria_capacity\domain8.pddl
File: .\terraria_capacity\p8.pddl
Number of literals: 9
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock chest1) are preferable
Have identified that bigger values of (stock wood1) are preferable
Have identified that bigger values of (stock lead1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
57% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 44.000
b (43.000 | 10.000)b (35.000 | 15.002)b (34.000 | 15.002)b (33.000 | 18.003)b (19.000 | 41.005)b (18.000 | 41.005)b (17.000 | 54.006)b (15.000 | 59.007)b (14.000 | 59.007)b (13.000 | 64.008)b (12.000 | 64.008)b (11.000 | 69.009)b (10.000 | 69.009)b (9.000 | 100.016)b (8.000 | 113.017)b (6.000 | 164.023)b (5.000 | 164.023)b (3.000 | 479.058)b (2.000 | 479.058)b (1.000 | 479.060);;;; Solution Found
; States evaluated: 164
; Cost: 479.060
0.000: (go_to home workshop)  [10.000]
10.001: (go_to workshop forest)  [3.000]
13.002: (cut_a_tree wood1 forest)  [2.000]
15.003: (go_to forest workshop)  [3.000]
18.004: (go_to workshop mine)  [13.000]
31.005: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
41.006: (go_to mine workshop)  [13.000]
54.007: (produce_chests chest1 wood1 lead1 iron1 workshop)  [5.000]
59.008: (assemble_a_sawmill wood1 iron1 chain1 workshop)  [5.000]
64.009: (assemble_a_loom wood1 workshop)  [5.000]
69.010: (place_chests chest1)  [0.001]
69.012: (go_to workshop forest)  [3.000]
72.013: (cut_a_tree wood1 forest)  [2.000]
74.014: (go_to forest workshop)  [3.000]
77.015: (go_to workshop mine)  [13.000]
90.016: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
100.017: (go_to mine workshop)  [13.000]
113.018: (make_silk silk1 cobweb1 workshop)  [5.000]
118.019: (make_silk silk1 cobweb1 workshop)  [5.000]
123.020: (go_to workshop mine)  [13.000]
136.021: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
146.022: (go_to mine workshop)  [13.000]
159.023: (make_silk silk1 cobweb1 workshop)  [5.000]
164.024: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
169.025: (go_to workshop mine)  [13.000]
182.026: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
192.027: (go_to mine workshop)  [13.000]
205.028: (make_silk silk1 cobweb1 workshop)  [5.000]
210.029: (go_to workshop mine)  [13.000]
223.030: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
233.031: (go_to mine workshop)  [13.000]
246.032: (make_silk silk1 cobweb1 workshop)  [5.000]
251.033: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
256.034: (go_to workshop mine)  [13.000]
269.035: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
279.036: (go_to mine workshop)  [13.000]
292.037: (make_silk silk1 cobweb1 workshop)  [5.000]
297.038: (go_to workshop mine)  [13.000]
310.039: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
320.040: (go_to mine workshop)  [13.000]
333.041: (make_silk silk1 cobweb1 workshop)  [5.000]
338.042: (go_to workshop forest)  [3.000]
341.043: (cut_a_tree wood1 forest)  [2.000]
343.044: (go_to forest workshop)  [3.000]
346.045: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
351.046: (go_to workshop mine)  [13.000]
364.047: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
374.048: (go_to mine workshop)  [13.000]
387.049: (make_silk silk1 cobweb1 workshop)  [5.000]
392.050: (go_to workshop mine)  [13.000]
405.051: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
415.052: (go_to mine workshop)  [13.000]
428.053: (make_silk silk1 cobweb1 workshop)  [5.000]
433.054: (go_to workshop mine)  [13.000]
446.055: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
456.056: (go_to mine workshop)  [13.000]
469.057: (make_silk silk1 cobweb1 workshop)  [5.000]
474.058: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
479.059: (place_beds bed1)  [0.001]

 Execution time of Domain\Problem 8 
00:00:33.5679198

 DOMAIN/PROBLEM 9 

File: .\terraria_capacity\domain9.pddl
File: .\terraria_capacity\p9.pddl
Number of literals: 9
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock chest1) are preferable
Have identified that bigger values of (stock wood1) are preferable
Have identified that bigger values of (stock lead1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
57% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 44.000
b (43.000 | 10.000)b (35.000 | 15.002)b (34.000 | 15.002)b (33.000 | 18.003)b (19.000 | 41.005)b (18.000 | 41.005)b (17.000 | 54.006)b (16.000 | 59.007)b (15.000 | 59.007)b (14.000 | 64.008)b (13.000 | 64.008)b (11.000 | 120.014)b (10.000 | 120.014)b (9.000 | 125.018)b (8.000 | 128.019)b (6.000 | 174.024)b (5.000 | 174.024)b (3.000 | 591.069)b (2.000 | 591.069)b (1.000 | 591.071);;;; Solution Found
; States evaluated: 266
; Cost: 591.071
0.000: (go_to home workshop)  [10.000]
10.001: (go_to workshop forest)  [3.000]
13.002: (cut_a_tree wood1 forest)  [2.000]
15.003: (go_to forest workshop)  [3.000]
18.004: (go_to workshop mine)  [13.000]
31.005: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
41.006: (go_to mine workshop)  [13.000]
54.007: (assemble_a_sawmill wood1 iron1 chain1 workshop)  [5.000]
59.008: (assemble_a_loom wood1 workshop)  [5.000]
64.009: (make_silk silk1 cobweb1 workshop)  [5.000]
69.010: (go_to workshop mine)  [13.000]
82.011: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
92.012: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
102.013: (go_to mine workshop)  [13.000]
115.014: (produce_chests chest1 wood1 lead1 iron1 workshop)  [5.000]
120.015: (place_chests chest1)  [0.001]
120.017: (go_to workshop forest)  [3.000]
123.018: (cut_a_tree wood1 forest)  [2.000]
125.019: (go_to forest workshop)  [3.000]
128.020: (make_silk silk1 cobweb1 workshop)  [5.000]
133.021: (go_to workshop mine)  [13.000]
146.022: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
156.023: (go_to mine workshop)  [13.000]
169.024: (make_silk silk1 cobweb1 workshop)  [5.000]
174.025: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
179.026: (go_to workshop mine)  [13.000]
192.027: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
202.028: (go_to mine workshop)  [13.000]
215.029: (make_silk silk1 cobweb1 workshop)  [5.000]
220.030: (go_to workshop mine)  [13.000]
233.031: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
243.032: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
253.033: (go_to mine workshop)  [13.000]
266.034: (make_silk silk1 cobweb1 workshop)  [5.000]
271.035: (go_to workshop mine)  [13.000]
284.036: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
294.037: (go_to mine workshop)  [13.000]
307.038: (make_silk silk1 cobweb1 workshop)  [5.000]
312.039: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
317.040: (go_to workshop mine)  [13.000]
330.041: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
340.042: (go_to mine workshop)  [13.000]
353.043: (make_silk silk1 cobweb1 workshop)  [5.000]
358.044: (go_to workshop mine)  [13.000]
371.045: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
381.046: (go_to mine workshop)  [13.000]
394.047: (make_silk silk1 cobweb1 workshop)  [5.000]
399.048: (go_to workshop mine)  [13.000]
412.049: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
422.050: (go_to mine workshop)  [13.000]
435.051: (make_silk silk1 cobweb1 workshop)  [5.000]
440.052: (go_to workshop forest)  [3.000]
443.053: (cut_a_tree wood1 forest)  [2.000]
445.054: (go_to forest workshop)  [3.000]
448.055: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
453.056: (go_to workshop mine)  [13.000]
466.057: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
476.058: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
486.059: (go_to mine workshop)  [13.000]
499.060: (make_silk silk1 cobweb1 workshop)  [5.000]
504.061: (go_to workshop mine)  [13.000]
517.062: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
527.063: (go_to mine workshop)  [13.000]
540.064: (make_silk silk1 cobweb1 workshop)  [5.000]
545.065: (go_to workshop mine)  [13.000]
558.066: (find_resources cobweb1 iron1 lead1 chain1 mine)  [10.000]
568.067: (go_to mine workshop)  [13.000]
581.068: (make_silk silk1 cobweb1 workshop)  [5.000]
586.069: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
591.070: (place_beds bed1)  [0.001]

 Execution time of Domain\Problem 9 
00:01:09.1555446

 DOMAIN/PROBLEM 10 

File: .\terraria_capacity\domain10.pddl
File: .\terraria_capacity\p10.pddl
Number of literals: 11
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%] [120%]
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock lead1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock platinum1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock sword1) are preferable
Have identified that bigger values of (stock chest1) are preferable
Have identified that bigger values of (stock wood1) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
50% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 54.000
b (53.000 | 10.000)b (45.000 | 15.002)b (44.000 | 15.002)b (43.000 | 18.003)b (29.000 | 32.005)b (28.000 | 32.005)b (26.000 | 33.006)b (25.000 | 33.006)b (24.000 | 46.007)b (22.000 | 51.008)b (21.000 | 51.008)b (20.000 | 58.009)b (19.000 | 58.009)b (18.000 | 63.010)b (17.000 | 63.010)b (16.000 | 68.011)b (15.000 | 68.011)b (14.000 | 73.015)b (13.000 | 76.016)b (11.000 | 112.022)b (10.000 | 112.022)b (9.000 | 126.026)b (8.000 | 139.027)b (6.000 | 176.032)b (5.000 | 176.032)b (3.000 | 497.080)b (2.000 | 497.080)b (1.000 | 497.082);;;; Solution Found
; States evaluated: 252
; Cost: 497.082
0.000: (go_to home workshop)  [10.000]
10.001: (go_to workshop forest)  [3.000]
13.002: (cut_a_tree wood1 forest)  [2.000]
15.003: (go_to forest workshop)  [3.000]
18.004: (go_to workshop mine)  [13.000]
31.005: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
32.006: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
33.007: (go_to mine workshop)  [13.000]
46.008: (produce_chests chest1 wood1 lead1 iron1 workshop)  [5.000]
51.009: (assemble_an_anvil iron1 workshop)  [7.000]
58.010: (assemble_a_sawmill wood1 iron1 chain1 workshop)  [5.000]
63.011: (assemble_a_loom wood1 workshop)  [5.000]
68.012: (place_chests chest1)  [0.001]
68.014: (go_to workshop forest)  [3.000]
71.015: (cut_a_tree wood1 forest)  [2.000]
73.016: (go_to forest workshop)  [3.000]
76.017: (make_silk silk1 cobweb1 workshop)  [5.000]
81.018: (go_to workshop mine)  [13.000]
94.019: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
95.020: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
96.021: (go_to mine workshop)  [13.000]
109.022: (produce_platinum_swords sword1 platinum1 workshop)  [3.000]
112.023: (place_swords sword1)  [0.001]
112.025: (go_to workshop mine)  [13.000]
125.026: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
126.027: (go_to mine workshop)  [13.000]
139.028: (make_silk silk1 cobweb1 workshop)  [5.000]
144.029: (go_to workshop mine)  [13.000]
157.030: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
158.031: (go_to mine workshop)  [13.000]
171.032: (make_silk silk1 cobweb1 workshop)  [5.000]
176.033: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
181.034: (go_to workshop mine)  [13.000]
194.035: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
195.036: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
196.037: (go_to mine workshop)  [13.000]
209.038: (make_silk silk1 cobweb1 workshop)  [5.000]
214.039: (go_to workshop mine)  [13.000]
227.040: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
228.041: (go_to mine workshop)  [13.000]
241.042: (make_silk silk1 cobweb1 workshop)  [5.000]
246.043: (go_to workshop mine)  [13.000]
259.044: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
260.045: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
261.046: (go_to mine workshop)  [13.000]
274.047: (make_silk silk1 cobweb1 workshop)  [5.000]
279.048: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
284.049: (go_to workshop mine)  [13.000]
297.050: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
298.051: (go_to mine workshop)  [13.000]
311.052: (make_silk silk1 cobweb1 workshop)  [5.000]
316.053: (go_to workshop mine)  [13.000]
329.054: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
330.055: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
331.056: (go_to mine workshop)  [13.000]
344.057: (make_silk silk1 cobweb1 workshop)  [5.000]
349.058: (go_to workshop mine)  [13.000]
362.059: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
363.060: (go_to mine workshop)  [13.000]
376.061: (make_silk silk1 cobweb1 workshop)  [5.000]
381.062: (go_to workshop forest)  [3.000]
384.063: (cut_a_tree wood1 forest)  [2.000]
386.064: (go_to forest workshop)  [3.000]
389.065: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
394.066: (go_to workshop mine)  [13.000]
407.067: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
408.068: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
409.069: (go_to mine workshop)  [13.000]
422.070: (make_silk silk1 cobweb1 workshop)  [5.000]
427.071: (go_to workshop mine)  [13.000]
440.072: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
441.073: (go_to mine workshop)  [13.000]
454.074: (make_silk silk1 cobweb1 workshop)  [5.000]
459.075: (go_to workshop mine)  [13.000]
472.076: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
473.077: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
474.078: (go_to mine workshop)  [13.000]
487.079: (make_silk silk1 cobweb1 workshop)  [5.000]
492.080: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
497.081: (place_beds bed1)  [0.001]

 Execution time of Domain\Problem 10 
00:02:48.5722591

 DOMAIN/PROBLEM 11 

File: .\terraria_capacity\domain11.pddl
File: .\terraria_capacity\p11.pddl
Number of literals: 13
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock mahoganywood) are preferable
Have identified that bigger values of (stock lead1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock platinum1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock sword1) are preferable
Have identified that bigger values of (stock chest1) are preferable
Have identified that bigger values of (stock wood1) are preferable
Have identified that bigger values of (stock ivychest) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
57% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 63.000
b (62.000 | 10.000)b (54.000 | 15.002)b (53.000 | 15.002)b (52.000 | 31.004)b (38.000 | 32.005)b (37.000 | 32.005)b (35.000 | 33.006)b (34.000 | 33.006)b (32.000 | 51.008)b (31.000 | 51.008)b (30.000 | 58.009)b (29.000 | 58.009)b (28.000 | 63.010)b (27.000 | 63.010)b (26.000 | 68.011)b (25.000 | 68.011)b (23.000 | 93.014)b (22.000 | 93.014)b (21.000 | 113.015)b (20.000 | 116.016)b (19.000 | 135.021)b (18.000 | 148.022)b (16.000 | 183.027)b (15.000 | 183.027)b (14.000 | 197.031)b (13.000 | 210.032)b (12.000 | 215.035)b (10.000 | 220.037)b (9.000 | 220.037)b (8.000 | 223.038)b (6.000 | 261.044)b (5.000 | 261.044)b (3.000 | 581.091)b (2.000 | 581.091)b (1.000 | 581.093);;;; Solution Found
; States evaluated: 723
; Cost: 581.093
0.000: (go_to home workshop)  [10.000]
10.001: (go_to workshop forest)  [3.000]
13.002: (cut_a_tree wood1 forest)  [2.000]
15.003: (go_to forest workshop)  [3.000]
18.004: (go_to workshop mine)  [13.000]
31.005: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
32.006: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
33.007: (go_to mine workshop)  [13.000]
46.008: (produce_chests chest1 wood1 lead1 iron1 workshop)  [5.000]
51.009: (assemble_an_anvil iron1 workshop)  [7.000]
58.010: (assemble_a_sawmill wood1 iron1 chain1 workshop)  [5.000]
63.011: (assemble_a_loom wood1 workshop)  [5.000]
68.012: (go_to workshop forest)  [3.000]
71.013: (go_to forest mahoganyforest)  [20.000]
91.014: (cut_mahogany_tree mahoganywood mahoganyforest)  [2.000]
93.015: (go_to mahoganyforest forest)  [20.000]
113.016: (go_to forest workshop)  [3.000]
116.017: (produce_ivy_chests ivychest mahoganywood lead1 iron1 workshop)  [5.000]
121.018: (place_ivy_chests ivychest)  [0.001]
121.020: (go_to workshop mine)  [13.000]
134.021: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
135.022: (go_to mine workshop)  [13.000]
148.023: (make_silk silk1 cobweb1 workshop)  [5.000]
153.024: (go_to workshop mine)  [13.000]
166.025: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
167.026: (go_to mine workshop)  [13.000]
180.027: (produce_platinum_swords sword1 platinum1 workshop)  [3.000]
183.028: (place_swords sword1)  [0.001]
183.030: (go_to workshop mine)  [13.000]
196.031: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
197.032: (go_to mine workshop)  [13.000]
210.033: (produce_chests chest1 wood1 lead1 iron1 workshop)  [5.000]
215.034: (place_chests chest1)  [0.001]
215.036: (go_to workshop forest)  [3.000]
218.037: (cut_a_tree wood1 forest)  [2.000]
220.038: (go_to forest workshop)  [3.000]
223.039: (make_silk silk1 cobweb1 workshop)  [5.000]
228.040: (go_to workshop mine)  [13.000]
241.041: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
242.042: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
243.043: (go_to mine workshop)  [13.000]
256.044: (make_silk silk1 cobweb1 workshop)  [5.000]
261.045: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
266.046: (go_to workshop mine)  [13.000]
279.047: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
280.048: (go_to mine workshop)  [13.000]
293.049: (make_silk silk1 cobweb1 workshop)  [5.000]
298.050: (go_to workshop mine)  [13.000]
311.051: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
312.052: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
313.053: (go_to mine workshop)  [13.000]
326.054: (make_silk silk1 cobweb1 workshop)  [5.000]
331.055: (go_to workshop mine)  [13.000]
344.056: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
345.057: (go_to mine workshop)  [13.000]
358.058: (make_silk silk1 cobweb1 workshop)  [5.000]
363.059: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
368.060: (go_to workshop mine)  [13.000]
381.061: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
382.062: (go_to mine workshop)  [13.000]
395.063: (make_silk silk1 cobweb1 workshop)  [5.000]
400.064: (go_to workshop mine)  [13.000]
413.065: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
414.066: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
415.067: (go_to mine workshop)  [13.000]
428.068: (make_silk silk1 cobweb1 workshop)  [5.000]
433.069: (go_to workshop mine)  [13.000]
446.070: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
447.071: (go_to mine workshop)  [13.000]
460.072: (make_silk silk1 cobweb1 workshop)  [5.000]
465.073: (go_to workshop forest)  [3.000]
468.074: (cut_a_tree wood1 forest)  [2.000]
470.075: (go_to forest workshop)  [3.000]
473.076: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
478.077: (go_to workshop mine)  [13.000]
491.078: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
492.079: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
493.080: (go_to mine workshop)  [13.000]
506.081: (make_silk silk1 cobweb1 workshop)  [5.000]
511.082: (go_to workshop mine)  [13.000]
524.083: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
525.084: (go_to mine workshop)  [13.000]
538.085: (make_silk silk1 cobweb1 workshop)  [5.000]
543.086: (go_to workshop mine)  [13.000]
556.087: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
557.088: (find_resources cobweb1 iron1 lead1 platinum1 chain1 mine)  [1.000]
558.089: (go_to mine workshop)  [13.000]
571.090: (make_silk silk1 cobweb1 workshop)  [5.000]
576.091: (assemble_beds wood1 silk1 bed1 workshop)  [5.000]
581.092: (place_beds bed1)  [0.001]

 Execution time of Domain\Problem 11 

00:05:07.3863598

 DOMAIN/PROBLEM 12 

File: .\terraria_capacity\domain12.pddl
File: .\terraria_capacity\p12.pddl
Number of literals: 13
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Have identified that bigger values of (stock cobweb1) are preferable
Have identified that bigger values of (stock iron1) are preferable
Have identified that bigger values of (stock mahoganywood) are preferable
Have identified that bigger values of (stock lead1) are preferable
Have identified that bigger values of (stock chain1) are preferable
Have identified that bigger values of (stock silk1) are preferable
Have identified that bigger values of (stock platinum1) are preferable
Have identified that bigger values of (stock bed1) are preferable
Have identified that bigger values of (stock sword1) are preferable
Have identified that bigger values of (stock chest1) are preferable
Have identified that bigger values of (stock wood1) are preferable
Have identified that bigger values of (stock ivychest) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
57% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 63.000
