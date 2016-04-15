(define (domain auv-3D)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(can-move)
	(descending)
	(ascending)
	(taking-sample)
	(sample-taken)
)
(:functions 
	(x)
	(y)
	(depth))
	
(:durative-action descend
:control-variables (and 
						(vel-x -10 10)
						(vel-y -10 10)
						(descent-rate 1 5)
						)

:duration (and (>= ?duration 0.1) (<= ?duration 2))
:condition (and 
				(at start (can-move))
				(over all (<= ((depth)) (1) 400))
			)
	    
:effect (and
			(at start (descending))
			(at start (not (can-move)))
			(at end (can-move))
			(at end (not (descending)))
			(increase (depth) (descent-rate))
			(increase (x) (vel-x))
			(increase (y) (vel-y))
			)
)

(:durative-action ascend
:control-variables (and 
						(vel-x -10 10)
						(vel-y -10 10)
						(ascent-rate 1 5)
						)

:duration (and (>= ?duration 0.1) (<= ?duration 25))
:condition (and 
				(at start (can-move))
				(over all (>= ((depth)) (1) 0))
			)
	    
:effect (and
			(at start (ascending))
			(at start (not (can-move)))
			(at end (can-move))
			(at end (not (ascending)))
			(decrease (depth) (ascent-rate))
			(increase (x) (vel-x))
			(increase (y) (vel-y))
			)
)

(:durative-action glide
:control-variables (and 
						(vel-x -10 10)
						(vel-y -10 10)
						
						)

:duration (and (>= ?duration 0.1) (<= ?duration 2))
:condition (and 
				(at start (can-move))
				
			)
	    
:effect (and
			(at start (ascending))
			(at start (not (can-move)))
			(at end (can-move))
			(at end (not (ascending)))
			
			(increase (x) (vel-x))
			(increase (y) (vel-y))
			)
)

(:durative-action take-sample

:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and 
				(at start (can-move))

				(at start (>= ((depth)) (1) 50))
				(at start (<= ((depth)) (1) 400))
				(at start (>= ((x)) (1) 8))
				(at start (<= ((x)) (1) 9))
				(at start (>= ((y)) (1) 7))
				(at start (<= ((y)) (1) 8))

				(at end (>= ((depth)) (1) 50))
				(at end (<= ((depth)) (1) 400))
				(at end (>= ((x)) (1) 8))
				(at end (<= ((x)) (1) 9))
				(at end (>= ((y)) (1) 7))
				(at end (<= ((y)) (1) 8))

				(over all (>= ((depth)) (1) 50))
				(over all (<= ((depth)) (1) 400))
				(over all (>= ((x)) (1) 8))
				(over all (<= ((x)) (1) 9))
				(over all (>= ((y)) (1) 7))
				(over all (<= ((y)) (1) 8))


			)

	    
:effect (and
			(at start (taking-sample))
			(at start (not (can-move)))
			(at end (sample-taken))
			(at end (can-move))
			(at end (not (taking-sample)))
			)
)


)

