(define (domain auv-2D-1)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(sample-taken)
    (can-move)
)
(:functions 
	(x) (y)
    (max_x)(max_y)
)

(:durative-action glide
:parameters()
:control (?x_pos ?y_pos ?x_neg ?y_neg - number)
:duration (and (>= ?duration (/ ?x_pos (max_x) ) ) (>= ?duration (/ ?y_pos (max_y) ) ) (>= ?duration (/ ?x_neg (max_x) ) ) (>= ?duration (/ ?y_neg (max_y) ) ) (<= ?duration 200 ) )
:condition (and (at start (can-move))
                (at start (>= ?x_pos 2))
                (at start (>= ?y_pos 2))
                (at end (>= ?x_neg 2))
                (at end (>= ?y_neg 2))
                (at end (<= ?x_neg 20))
                (at end (<= ?y_neg 20))

                (at start (<= (+ (* ?x_pos 3) (* ?y_pos 4)) 120 )) ;;  power is only needed when gliding up.

                (over all (<= (x) 100))
                (over all (>= (x) 0))
                (over all (<= (y) 100))
                (over all (>= (y) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (increase (x) ?x_pos))
            (at start (increase (y) ?y_pos))
            (at end (decrease (x) ?x_neg))
            (at end (decrease (y) ?y_neg))

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