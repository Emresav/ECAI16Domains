(define (domain auv-2D-1)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(sample-takenA)
	(sample-takenB)
    (can-move)
)
(:functions 
	(x) (y)
)

(:durative-action glide
:control-variables (and 
						(vel-x -2 2)
						(vel-y -2 2)
						)

:duration (and (>= ?duration 0.1) (<= ?duration 200))
:condition (and 
			 (at start (can-move))
				(over all (<= ((x)) (1) 100))
				(over all (>= ((x)) (1) 0))
				(over all (<= ((y)) (1) 100))
				(over all (>= ((y)) (1) 0))
			)
	    
:effect (and
			 (at start (not (can-move)))
			 (at end (can-move))
			(increase (x) (vel-x))
			(increase (y) (vel-y))
			)
)


(:durative-action take-sampleA
:parameters()
:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and (at start (can-move))
                (at start (>= ((x)) (1) 80))
                (at start (<= ((x)) (1) 90))
                (at start (>= ((y)) (1) 70))
                (at start (<= ((y)) (1) 80))

                (over all (>= ((x)) (1) 80))
                (over all (<= ((x)) (1) 90))
                (over all (>= ((y)) (1) 70))
                (over all (<= ((y)) (1) 80))

                (at end (>= ((x)) (1) 80))
                (at end (<= ((x)) (1) 90))
                (at end (>= ((y)) (1) 70))
                (at end (<= ((y)) (1) 80))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-takenA)) 

            ))
(:durative-action take-sampleB
:parameters()
:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and (at start (can-move))
                (at start (>= ((x)) (1) 55))
                (at start (<= ((x)) (1) 60))
                (at start (>= ((y)) (1) 40))
                (at start (<= ((y)) (1) 45))

                (over all (>= ((x)) (1) 55))
                (over all (<= ((x)) (1) 60))
                (over all (>= ((y)) (1) 40))
                (over all (<= ((y)) (1) 45))

                (at end (>= ((x)) (1) 55))
                (at end (<= ((x)) (1) 60))
                (at end (>= ((y)) (1) 40))
                (at end (<= ((y)) (1) 45))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-takenB)) 

            ))


)