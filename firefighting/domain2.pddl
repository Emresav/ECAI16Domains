(define (domain auv-2D-1)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
    (available)
    (have-water)
    (fire1-on)
    (fire2-on)
    (fire1-extinguished)
    (fire2-extinguished)
    (photo1)
    (photo2)
)
(:functions 
	(x) (y)
   (maxVx)(maxVy)
)

(:durative-action fly
:parameters()
:control (?dx_pos ?dy_pos ?dx_neg ?dy_neg - number)
:duration (and  (>= ?duration (/ ?dx_pos (maxVx) ) ) 
                (>= ?duration (/ ?dy_pos (maxVy) ) )    
                (>= ?duration (/ ?dx_neg (maxVx) ) ) 
                (>= ?duration (/ ?dy_neg (maxVy) ) ) 
                (<= ?duration 8) )  ;; ?duration <= 20

:condition (and  (at start (available))
                (at start (>= ?dx_pos 15) )
                (at start (>= ?dy_pos 15) )
                (at start (<= ?dx_pos 400) )
                (at start (<= ?dy_pos 400) )
                (at end (>= ?dx_neg 15) )
                (at end (>= ?dy_neg 15) )
                (at end (<= ?dx_neg 400) )
                (at end (<= ?dy_neg 400) ) ;; does not matter what the upper bound is. duration will be less than 20 anyways

                (over all (<= (x) 100))
                (over all (>= (x) 0))
                (over all (<= (y) 100))
                (over all (>= (y) 0))

            )
:effect (and  (at start (not (available)) )
                (at end (available))
            (at start (increase (x) ?dx_pos))
            (at start (increase (y) ?dy_pos))
            (at end (decrease (x) ?dx_neg))
            (at end (decrease (y) ?dy_neg))
            ))



(:durative-action fill-water
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 8))
:condition (and (at start (available))
                (at start (<= (x) 25))
                (at start (>= (x) 20))
                (at start (<= (y) 35))
                (at start (>= (y) 30))
                (at end (<= (x) 25))
                (at end (>= (x) 20))
                (at end (<= (y) 35))
                (at end (>= (y) 30))
                (over all (<= (x) 25))
                (over all (>= (x) 20))
                (over all (<= (y) 35))
                (over all (>= (y) 30))
            )
        
:effect (and (at start (not (available)) )
                (at end (available))
            (at end (have-water))
            )
)

(:durative-action extinguish1
:parameters()
:duration (and (>= ?duration 3) (<= ?duration 15))
:condition (and (at start (available))
                (at start (have-water))
                (at start (<= (x) 45))
                (at start (>= (x) 40))
                (at start (<= (y) 50))
                (at start (>= (y) 45))
                (at end (<= (x) 45))
                (at end (>= (x) 40))
                (at end (<= (y) 50))
                (at end (>= (y) 45))
                (over all (<= (x) 45))
                (over all (>= (x) 40))
                (over all (<= (y) 50))
                (over all (>= (y) 45))
            )
        
:effect (and
            (at end (fire1-extinguished))
            (at end (not (fire1-on)))
            (at end (not (have-water)))
            (at start (not (available)) )
                (at end (available))
            )
)

(:durative-action take-photo1
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 3))
:condition (and (at start (available))
                (at start (fire1-extinguished))
                (at start (<= (x) 45))
                (at start (>= (x) 40))
                (at start (<= (y) 50))
                (at start (>= (y) 45))
                (at end (<= (x) 45))
                (at end (>= (x) 40))
                (at end (<= (y) 50))
                (at end (>= (y) 45))
                (over all (<= (x) 45))
                (over all (>= (x) 40))
                (over all (<= (y) 50))
                (over all (>= (y) 45))
            )
        
:effect (and
            (at end (photo1))
            )
)

(:durative-action extinguish2
:parameters()
:duration (and (>= ?duration 3) (<= ?duration 15))
:condition (and (at start (available))
                (at start (have-water))
                (at start (<= (x) 75))
                (at start (>= (x) 70))
                (at start (<= (y) 60))
                (at start (>= (y) 55))
                (at end (<= (x) 75))
                (at end (>= (x) 70))
                (at end (<= (y) 60))
                (at end (>= (y) 55))
                (over all (<= (x) 75))
                (over all (>= (x) 70))
                (over all (<= (y) 60))
                (over all (>= (y) 55))
            )
        
:effect (and
            (at end (fire2-extinguished))
            (at end (not (fire2-on)))
            (at end (not (have-water)))
            (at start (not (available)) )
                (at end (available))
            )
)

(:durative-action take-photo2
:parameters()
:duration (and (>= ?duration 1) (<= ?duration 3))
:condition (and (at start (available))
                (at start (fire2-extinguished))
                (at start (<= (x) 75))
                (at start (>= (x) 70))
                (at start (<= (y) 60))
                (at start (>= (y) 55))
                (at end (<= (x) 75))
                (at end (>= (x) 70))
                (at end (<= (y) 60))
                (at end (>= (y) 55))
                (over all (<= (x) 75))
                (over all (>= (x) 70))
                (over all (<= (y) 60))
                (over all (>= (y) 55))
            )
        
:effect (and (at start (not (available)) )
                (at end (available))
            (at end (photo2))
            ) )


)