(define (domain auv-2D-1)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
    (available)
	(have-water)
    (fire1-on)
    (fire1-extinguished)
    (photo1)
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
				(<= ?duration 8) )  ;; ?duration <= 8

:condition (and (at start (available))
                (at start (>= ?dx_pos 1) )
                (at start (>= ?dy_pos 1) )
                (at start (<= ?dx_pos 200) )
                (at start (<= ?dy_pos 200) )
                (at end (>= ?dx_neg 1) )
                (at end (>= ?dy_neg 1) )
                (at end (<= ?dx_neg 200) )
                (at end (<= ?dy_neg 200) ) ;; does not matter what the upper bound is. duration will be less than 200 anyways

            )
:effect (and (at start (not (available)) )
            (at start (increase (x) ?dx_pos))
            (at start (increase (y) ?dy_pos))
            (at end (decrease (x) ?dx_neg))
            (at end (decrease (y) ?dy_neg))
            (at end (available))
            ))

(:durative-action fill-water
:parameters()   
:duration (and (>= ?duration 1) (<= ?duration 8))
:condition (and (at start (available) )
                (at start (<= (x) 20))
                (at start (>= (x) 15))
                (at start (<= (y) 15))
                (at start (>= (y) 10))
                (at end (<= (x) 20))
                (at end (>= (x) 15))
                (at end (<= (y) 15))
                (at end (>= (y) 10))
                (over all (<= (x) 20))
                (over all (>= (x) 15))
                (over all (<= (y) 15))
                (over all (>= (y) 10))
            )
        
:effect (and
            (at end (have-water))
            )
)

(:durative-action extinguish1
:parameters()
:duration (and (>= ?duration 3) (<= ?duration 15))
:condition (and (at start (available) )
                (at start (have-water))
                (at start (<= (x) 35))
                (at start (>= (x) 30))
                (at start (<= (y) 25))
                (at start (>= (y) 20))
                (at end (<= (x) 35))
                (at end (>= (x) 30))
                (at end (<= (y) 25))
                (at end (>= (y) 20))
                (over all (<= (x) 35))
                (over all (>= (x) 30))
                (over all (<= (y) 25))
                (over all (>= (y) 20))
            )
        
:effect (and
            (at end (fire1-extinguished))
            (at end (not (fire1-on)))
            (at end (not (have-water)))
            )
)

(:durative-action take-photo1
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 3))
:condition (and (at start (available) )
                (at start (fire1-extinguished))
                (at start (<= (x) 35))
                (at start (>= (x) 30))
                (at start (<= (y) 25))
                (at start (>= (y) 20))
                (at end (<= (x) 35))
                (at end (>= (x) 30))
                (at end (<= (y) 25))
                (at end (>= (y) 20))
                (over all (<= (x) 35))
                (over all (>= (x) 30))
                (over all (<= (y) 25))
                (over all (>= (y) 20))
            )
        
:effect (and
            (at end (photo1))
            )
)


)