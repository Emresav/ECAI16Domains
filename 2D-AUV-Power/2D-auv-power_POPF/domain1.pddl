(define (domain auv-2D-1)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(sample-taken)
    (can-move)
)
(:functions 
	(x) (y)
)

(:durative-action glide_x_pos_1unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (x) 100))
                (over all (>= (x) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (increase (x) 1))
            ))

(:durative-action glide_x_neg_1unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (x) 100))
                (over all (>= (x) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (decrease (x) 1 ))
            ))

(:durative-action glide_y_pos_1unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (y) 100))
                (over all (>= (y) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (increase (y) 1 ))
            ))

(:durative-action glide_y_neg_1unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (y) 100))
                (over all (>= (y) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (decrease (y) 1 ))
            ))

;;; 5 units


(:durative-action glide_x_pos_5unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (x) 100))
                (over all (>= (x) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (increase (x) 5 ))
            ))

(:durative-action glide_x_neg_5unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (x) 100))
                (over all (>= (x) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (decrease (x) 5 ))
            ))

(:durative-action glide_y_pos_5unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (y) 100))
                (over all (>= (y) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (increase (y) 5 ))
            ))

(:durative-action glide_y_neg_5unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (y) 100))
                (over all (>= (y) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (decrease (y) 5 ))
            ))

;; 10 units 

(:durative-action glide_x_pos_10unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (x) 100))
                (over all (>= (x) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (increase (x) 10 ))
            ))

(:durative-action glide_x_neg_10unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (x) 100))
                (over all (>= (x) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (decrease (x) 10 ))
            ))

(:durative-action glide_y_pos_10unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (y) 100))
                (over all (>= (y) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (increase (y) 10 ))
            ))

(:durative-action glide_y_neg_10unit
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 200) )
:condition (and (at start (can-move))

                (over all (<= (y) 100))
                (over all (>= (y) 0))
            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (decrease (y) 10 ))
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