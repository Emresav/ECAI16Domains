(define (domain firefighting2)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(have-water)
	(fire1-on)
	(fire1-extinguished)
	(photo1)
)
(:functions (x) (y))
	
(:durative-action fly
:control-variables (and 
						(velX -2 2)
						(velY -2 2))

:duration (and (>= ?duration 0.5) (<= ?duration 8))
:condition (and 
				
			)
	    
:effect (and
			(increase (x) (velX))
			(increase (y) (velY))
			)
)

(:durative-action fill-water
:duration (and (>= ?duration 1) (<= ?duration 8))
:condition (and 
				(at start (<= ((x)) (1) 20))
				(at start (>= ((x)) (1) 15))
				(at start (<= ((y)) (1) 15))
				(at start (>= ((y)) (1) 10))
				(at end (<= ((x)) (1) 20))
				(at end (>= ((x)) (1) 15))
				(at end (<= ((y)) (1) 15))
				(at end (>= ((y)) (1) 10))
				(over all (<= ((x)) (1) 20))
				(over all (>= ((x)) (1) 15))
				(over all (<= ((y)) (1) 15))
				(over all (>= ((y)) (1) 10))
			)
	    
:effect (and
			(at end (have-water))
			)
)

(:durative-action extinguish1

:duration (and (>= ?duration 3) (<= ?duration 15))
:condition (and 
				(at start (have-water))
				(at start (<= ((x)) (1) 35))
				(at start (>= ((x)) (1) 30))
				(at start (<= ((y)) (1) 25))
				(at start (>= ((y)) (1) 20))
				(at end (<= ((x)) (1) 35))
				(at end (>= ((x)) (1) 30))
				(at end (<= ((y)) (1) 25))
				(at end (>= ((y)) (1) 20))
				(over all (<= ((x)) (1) 35))
				(over all (>= ((x)) (1) 30))
				(over all (<= ((y)) (1) 25))
				(over all (>= ((y)) (1) 20))
			)
	    
:effect (and
			(at end (fire1-extinguished))
			(at end (not (fire1-on)))
			(at end (not (have-water)))
			)
)

(:durative-action take-photo1

:duration (and (>= ?duration 1) (<= ?duration 3))
:condition (and 
				(at start (fire1-extinguished))
				(at start (<= ((x)) (1) 35))
				(at start (>= ((x)) (1) 30))
				(at start (<= ((y)) (1) 25))
				(at start (>= ((y)) (1) 20))
				(at end (<= ((x)) (1) 35))
				(at end (>= ((x)) (1) 30))
				(at end (<= ((y)) (1) 25))
				(at end (>= ((y)) (1) 20))
				(over all (<= ((x)) (1) 35))
				(over all (>= ((x)) (1) 30))
				(over all (<= ((y)) (1) 25))
				(over all (>= ((y)) (1) 20))
			)
	    
:effect (and
			(at end (photo1))
			)
)



)

