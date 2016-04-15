(define (domain auv-2D-1)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(sample-taken)
    (can-move)
)
(:functions 
	(x) (y) (depth)
(maxVx)(maxVy) ;; (maxDescent-rate) (maxAscent-rate)
)

(:durative-action ascent
:parameters()
:control (?dx_pos ?dy_pos ?ascent - number)
:duration (and 	(>= ?duration (/ ?dx_pos (maxVx) ) ) 
				(>= ?duration (/ ?dy_pos (maxVy) ) )	
				(<= ?duration 25) )  ;; ?duration <= 200 

:condition (and (at start (can-move))
                (at start (>= ?dx_pos 2) ) ;; 1/10 = 0.1
                (at start (>= ?dy_pos 2) )
                (at start (>= ?ascent 1) )
                 (at start (<= ?ascent 125) );; 25 x 5 = 125
                (at start (<= ?dx_pos 250) )
                (at start (<= ?dy_pos 250) )

                (over all (>= (depth) 0))
                (at start (>= (depth) 0))
                 (at end (>= (depth) 0))

                 (at start (>= (x) 0))
                (at start (>= (y) 0))
                 (at end (>= (x) 0))
                (at end (>= (y) 0))


            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (decrease (depth) ?ascent))
            (at start (increase (x) ?dx_pos))
            (at start (increase (y) ?dy_pos))
            ))

(:durative-action descent
:parameters()
:control (?dx_pos ?dy_pos ?descent - number)
:duration (and  (>= ?duration (/ ?dx_pos (maxVx) ) ) 
                (>= ?duration (/ ?dy_pos (maxVy) ) )    
                (<= ?duration 2) )  ;; ?duration <= 200 

:condition (and (at start (can-move))
                (at start (>= ?dx_pos 1) ) ;; 1/10 = 0.1
                (at start (>= ?dy_pos 1) )
                (at start (>= ?descent 1) )
                 (at start (<= ?descent 10) ) ;; 2 x 5 = 10
                (at start (<= ?dx_pos 25) )
                (at start (<= ?dy_pos 25) )

                 (at start (>= (x) 0))
                (at start (>= (y) 0))
                 (at end (>= (x) 0))
                (at end (>= (y) 0))

                (over all (<= (depth) 400))
                (at start (>= (depth) 0))
                 (at end (>= (depth) 0))

            )
:effect (and
            (at start (not (can-move)))
            (at end (can-move))
            (at start (increase (depth) ?descent))
            (at start (increase (x) ?dx_pos))
            (at start (increase (y) ?dy_pos))
            ))

(:durative-action glide
:parameters()
:control (?dx_pos ?dy_pos ?dx_neg ?dy_neg - number)
:duration (and  (>= ?duration (/ ?dx_pos (maxVx) ) ) 
                (>= ?duration (/ ?dy_pos (maxVy) ) )    
                (>= ?duration (/ ?dx_neg (maxVx) ) ) 
                (>= ?duration (/ ?dy_neg (maxVy) ) ) 
                (<= ?duration 2) )  ;; ?duration <= 200 

:condition (and (at start (can-move))
                (at start (>= ?dx_pos 2) )
                (at start (>= ?dy_pos 2) )
                (at start (<= ?dx_pos 200) )
                (at start (<= ?dy_pos 200) )
                (at end (>= ?dx_neg 2) )
                (at end (>= ?dy_neg 2) )
                (at end (<= ?dx_neg 200) )
                (at end (<= ?dy_neg 200) ) 

                                 (at start (>= (x) 0))
                (at start (>= (y) 0))
                 (at end (>= (x) 0))
                (at end (>= (y) 0))

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

(at start (>= (depth) 50))
                (at start (<= (depth) 400))
                (at start (>= (x) 8))
                (at start (<= (x) 9))
                (at start (>= (y) 7))
                (at start (<= (y) 8))

                (at end (>= (depth) 50))
                (at end (<= (depth) 400))
                (at end (>= (x) 8))
                (at end (<= (x) 9))
                (at end (>= (y) 7))
                (at end (<= (y) 8))

                (over all (>= (depth) 50))
                (over all (<= (depth) 400))
                (over all (>= (x) 8))
                (over all (<= (x) 9))
                (over all (>= (y) 7))
                (over all (<= (y) 8))
            )
:effect (and    (at start (not (can-move)))
                (at end (can-move))
            (at end (sample-taken)) 

            ))

)