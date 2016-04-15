(define (domain firefighting2)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:predicates
	(have-water)
	(fire1-on)
	(fire2-on)
	(fire1-extinguished)
	(fire2-extinguished)
	(photo1)
	(photo2)
)
(:functions (x) (y))
	
(:durative-action fly
:control-variables (and 
						(velX -30 30)
						(velY -30 30))

:duration (and (>= ?duration 1) (<= ?duration 8))
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
				(at start (<= ((x)) (1) 25))
				(at start (>= ((x)) (1) 20))
				(at start (<= ((y)) (1) 35))
				(at start (>= ((y)) (1) 30))
				(at end (<= ((x)) (1) 25))
				(at end (>= ((x)) (1) 20))
				(at end (<= ((y)) (1) 35))
				(at end (>= ((y)) (1) 30))
				(over all (<= ((x)) (1) 25))
				(over all (>= ((x)) (1) 20))
				(over all (<= ((y)) (1) 35))
				(over all (>= ((y)) (1) 30))
			)
	    
:effect (and
			(at end (have-water))
			)
)

(:durative-action extinguish1

:duration (and (>= ?duration 3) (<= ?duration 15))
:condition (and 
				(at start (have-water))
				(at start (<= ((x)) (1) 45))
				(at start (>= ((x)) (1) 40))
				(at start (<= ((y)) (1) 50))
				(at start (>= ((y)) (1) 45))
				(at end (<= ((x)) (1) 45))
				(at end (>= ((x)) (1) 40))
				(at end (<= ((y)) (1) 50))
				(at end (>= ((y)) (1) 45))
				(over all (<= ((x)) (1) 45))
				(over all (>= ((x)) (1) 40))
				(over all (<= ((y)) (1) 50))
				(over all (>= ((y)) (1) 45))
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
				(at start (<= ((x)) (1) 45))
				(at start (>= ((x)) (1) 40))
				(at start (<= ((y)) (1) 50))
				(at start (>= ((y)) (1) 45))
				(at end (<= ((x)) (1) 45))
				(at end (>= ((x)) (1) 40))
				(at end (<= ((y)) (1) 50))
				(at end (>= ((y)) (1) 45))
				(over all (<= ((x)) (1) 45))
				(over all (>= ((x)) (1) 40))
				(over all (<= ((y)) (1) 50))
				(over all (>= ((y)) (1) 45))
			)
	    
:effect (and
			(at end (photo1))
			)
)

(:durative-action extinguish2

:duration (and (>= ?duration 3) (<= ?duration 15))
:condition (and 
				(at start (have-water))
				(at start (<= ((x)) (1) 75))
				(at start (>= ((x)) (1) 70))
				(at start (<= ((y)) (1) 60))
				(at start (>= ((y)) (1) 55))
				(at end (<= ((x)) (1) 75))
				(at end (>= ((x)) (1) 70))
				(at end (<= ((y)) (1) 60))
				(at end (>= ((y)) (1) 55))
				(over all (<= ((x)) (1) 75))
				(over all (>= ((x)) (1) 70))
				(over all (<= ((y)) (1) 60))
				(over all (>= ((y)) (1) 55))
			)
	    
:effect (and
			(at end (fire2-extinguished))
			(at end (not (fire2-on)))
			(at end (not (have-water)))
			)
)

(:durative-action take-photo2

:duration (and (>= ?duration 1) (<= ?duration 3))
:condition (and 
				(at start (fire2-extinguished))
				(at start (<= ((x)) (1) 75))
				(at start (>= ((x)) (1) 70))
				(at start (<= ((y)) (1) 60))
				(at start (>= ((y)) (1) 55))
				(at end (<= ((x)) (1) 75))
				(at end (>= ((x)) (1) 70))
				(at end (<= ((y)) (1) 60))
				(at end (>= ((y)) (1) 55))
				(over all (<= ((x)) (1) 75))
				(over all (>= ((x)) (1) 70))
				(over all (<= ((y)) (1) 60))
				(over all (>= ((y)) (1) 55))
			)
	    
:effect (and
			(at end (photo2))
			)
)

)

