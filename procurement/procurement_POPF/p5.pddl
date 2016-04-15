;; itemD becomes an intermediate product now.
;; item L aand M, N added

(define (problem procurement_problem)
	(:domain procurement_truck)
	(:objects
		;; end and intermediate products 
        A - itemA
		C - itemC
		B - itemB
		D - itemD
		;; raw materials 
        E - itemE
		I - itemI
		J - itemJ
		K - itemK
		L - itemL
		N - itemN

		HomeDepot - location
		Workshop1 Workshop2 Workshop3 - location
		Customer1 Customer2 Customer3 - location
		Home - location
		
	)
	(:init
    (available)
	
	;; product stocks
    (= (stock A) 0)
    (= (stock C) 0) 
	(= (stock B) 0)
	(= (stock D) 0)
	;; raw material stocks
    (= (stock E) 0)
    (= (stock I) 0)
    (= (stock J) 0)
    (= (stock K) 0)
    (= (stock L) 0)
    (= (stock N) 0)

    (link Workshop1 Workshop2)
    (link Workshop2 Workshop1)
    (link Workshop1 Workshop3)
    (link Workshop3 Workshop1)
    (link Workshop2 Workshop3)
    (link Workshop3 Workshop2)

    (link Home Workshop1)
    (link Workshop1 Home)
    (link Home Workshop2)
    (link Workshop2 Home)
    (link Home Workshop3)
    (link Workshop3 Home)

    (link Home Customer1)
    (link Customer1 Home)
    (link Home Customer2)
    (link Customer2 Home)
    (link Home Customer3)
    (link Customer3 Home)

    (link HomeDepot Workshop1)
    (link Workshop1 HomeDepot)
    (link HomeDepot Workshop2)
    (link Workshop2 HomeDepot)
    (link HomeDepot Workshop3)
    (link Workshop3 HomeDepot)

    (link HomeDepot Customer1)
    (link Customer1 HomeDepot)
    (link HomeDepot Customer2)
    (link Customer2 HomeDepot)
    (link HomeDepot Customer3)
    (link Customer3 HomeDepot)

    (link Customer1 Workshop1)
    (link Workshop1 Customer1)
    (link Customer1 Workshop2)
    (link Workshop2 Customer1)
    (link Customer1 Workshop3)
    (link Workshop3 Customer1)
    
    (link Customer2 Workshop1)
    (link Workshop1 Customer2)
    (link Customer2 Workshop2)
    (link Workshop2 Customer2)
    (link Customer2 Workshop3)
    (link Workshop3 Customer2)
    
    (link Customer3 Workshop1)
    (link Workshop1 Customer3)
    (link Customer3 Workshop2)
    (link Workshop2 Customer3)
    (link Customer3 Workshop3)
    (link Workshop3 Customer3)

    (at Home)
	(can_produce_A Workshop1)			
	(can_produce_C Workshop2)
	(can_produce_B Workshop3)
	(can_produce_D Workshop3)
	(can_supply HomeDepot)
	
    )
	
    (:goal (and (delivered A Customer1) (delivered B Customer2) ) )
)
