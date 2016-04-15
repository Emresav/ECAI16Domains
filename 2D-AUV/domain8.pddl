(define (domain auv-2D-1)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(sample-takenA)
	(sample-takenB)
	(sample-takenC)
	(sample-takenD)
	(sample-takenE)
	(sample-takenF)
    (can-move)
)
(:functions 
	(x) (y)
    (maxVx)(maxVy)
)

(:durative-action glide
:parameters()
:control (?dx_pos ?dy_pos ?dx_neg ?dy_neg - number)
:duration (and 	(>= ?duration (/ ?dx_pos (maxVx) ) ) 
				(>= ?duration (/ ?dy_pos (maxVy) ) ) 	
				(>= ?duration (/ ?dx_neg (maxVx) ) ) 
				(>= ?duration (/ ?dy_neg (maxVy) ) ) 
				(<= ?duration 200) )  ;; ?duration <= 200 

:condition (and (at start (can-move))
                (at start (>= ?dx_pos 2) )
                (at start (>= ?dy_pos 2) )
                (at start (<= ?dx_pos 200) )
                (at start (<= ?dy_pos 200) )
                (at end (>= ?dx_neg 2) )
                (at end (>= ?dy_neg 2) )
                (at end (<= ?dx_neg 200) )
                (at end (<= ?dy_neg 200) ) ;; does not matter what the upper bound is. duration will be less than 200 anyways


               ;; (at start (<= (+ (* ?dx_pos 3) (* ?dy_pos 4)) 120 )) ;;  power is only needed when gliding up.

                (over all (<= (x) 100))
                (over all (>= (x) 0))
                (over all (<= (y) 100))
                (over all (>= (y) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (increase (x) ?dx_pos))
            (at start (increase (y) ?dy_pos))
            (at end (decrease (x) ?dx_neg))
            (at end (decrease (y) ?dy_neg))

            ))
(:durative-action take-sampleA
:parameters()
:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and (at start (can-move))
                (at start (>= (x) 80))
                (at start (<= (x) 90))
                (at start (>= (y) 70))
                (at start (<= (y) 80))

                (over all (>= (x) 80))
                (over all (<= (x) 90))
                (over all (>= (y) 70))
                (over all (<= (y) 80))

                (at end (>= (x) 80))
                (at end (<= (x) 90))
                (at end (>= (y) 70))
                (at end (<= (y) 80))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-takenA)) 

            ))
(:durative-action take-sampleB
:parameters()
:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and (at start (can-move))
                (at start (>= (x) 55))
                (at start (<= (x) 60))
                (at start (>= (y) 40))
                (at start (<= (y) 45))

                (over all (>= (x) 55))
                (over all (<= (x) 60))
                (over all (>= (y) 40))
                (over all (<= (y) 45))

                (at end (>= (x) 55))
                (at end (<= (x) 60))
                (at end (>= (y) 40))
                (at end (<= (y) 45))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-takenB)) 

            ))

(:durative-action take-sampleC
:parameters()
:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and (at start (can-move))
                (at start (>= (x) 30))
                (at start (<= (x) 40))
                (at start (>= (y) 30))
                (at start (<= (y) 40))

                (over all (>= (x) 30))
                (over all (<= (x) 40))
                (over all (>= (y) 30))
                (over all (<= (y) 40))

                (at end (>= (x) 30))
                (at end (<= (x) 40))
                (at end (>= (y) 30))
                (at end (<= (y) 40))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-takenC)) 

            ))

(:durative-action take-sampleD
:parameters()
:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and (at start (can-move))
                (at start (>= (x) 10))
                (at start (<= (x) 20))
                (at start (>= (y) 80))
                (at start (<= (y) 90))

                (over all (>= (x) 10))
                (over all (<= (x) 20))
                (over all (>= (y) 80))
                (over all (<= (y) 90))

                (at end (>= (x) 10))
                (at end (<= (x) 20))
                (at end (>= (y) 80))
                (at end (<= (y) 90))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-takenD)) 

            ))

(:durative-action take-sampleE
:parameters()
:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and (at start (can-move))
                (at start (>= (x) 10))
                (at start (<= (x) 20))
                (at start (>= (y) 30))
                (at start (<= (y) 40))

                (over all (>= (x) 10))
                (over all (<= (x) 20))
                (over all (>= (y) 30))
                (over all (<= (y) 40))

                (at end (>= (x) 10))
                (at end (<= (x) 20))
                (at end (>= (y) 30))
                (at end (<= (y) 40))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-takenE)) 

            ))

(:durative-action take-sampleF
:parameters()
:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and (at start (can-move))
                (at start (>= (x) 40))
                (at start (<= (x) 50))
                (at start (>= (y) 60))
                (at start (<= (y) 70))

                (over all (>= (x) 40))
                (over all (<= (x) 50))
                (over all (>= (y) 60))
                (over all (<= (y) 70))

                (at end (>= (x) 40))
                (at end (<= (x) 50))
                (at end (>= (y) 60))
                (at end (<= (y) 70))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-takenF)) 

            ))

)