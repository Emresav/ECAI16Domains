(define (domain auv-2D-1)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(sample-taken)
    (can-move)
)
(:functions 
	(x) (y)
    (minVx)(minVy)(maxVx)(maxVy)
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
(:durative-action take-sample
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
            (at end (sample-taken)) 

            ))

)