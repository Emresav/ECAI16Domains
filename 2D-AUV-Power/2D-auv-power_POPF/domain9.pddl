;; placed a new sample point somewhere in the middle.
;; initial location is changed from (50,60) to (30,30)
(define (domain auv-2D-1)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(sample-takenA)
    (sample-takenB)
    (sample-takenC)
    (sample-takenD)
    (sample-takenE)
    (sample-takenF)
    (sample-takenH)
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
                (at start (>= (x) 70))
                (at start (<= (x) 80))
                (at start (>= (y) 50))
                (at start (<= (y) 60))

                (over all (>= (x) 70))
                (over all (<= (x) 80))
                (over all (>= (y) 50))
                (over all (<= (y) 60))

                (at end (>= (x) 70))
                (at end (<= (x) 80))
                (at end (>= (y) 50))
                (at end (<= (y) 60))
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

(:durative-action take-sampleH
:parameters()
:duration (and (>= ?duration 2) (<= ?duration 8))
:condition (and (at start (can-move))
                (at start (>= (x) 50))
                (at start (<= (x) 60))
                (at start (>= (y) 10))
                (at start (<= (y) 20))

                (over all (>= (x) 50))
                (over all (<= (x) 60))
                (over all (>= (y) 10))
                (over all (<= (y) 20))

                (at end (>= (x) 50))
                (at end (<= (x) 60))
                (at end (>= (y) 10))
                (at end (<= (y) 20))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-takenH)) 

            ))


)