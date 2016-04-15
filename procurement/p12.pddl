
(define (problem procurement_problem)
	(:domain procurement_truck)
	(:objects
		;; end and intermediate products 
        A - itemA
        B - itemB
		C - itemC
		D - itemD
		L - itemL
		F - itemF
        G - itemG
		;; raw materials 
        E - itemE
		I - itemI
		J - itemJ
		K - itemK
		N - itemN
		M - itemM
		H - itemH

		HomeDepot - location
		Workshop1 Workshop2 Workshop3 Workshop4 - location
		Customer1 Customer2 Customer3 - location
		Home - location
		
	)
	(:init
    (available)
	
	;; product stocks
    (= (stock A) 0)
   	(= (stock B) 0)
    (= (stock C) 0) 
	(= (stock D) 0)
	(= (stock L) 0)
	(= (stock F) 0)
    (= (stock G) 0)
	;; raw material stocks
    (= (stock E) 0)
    (= (stock I) 0)
    (= (stock J) 0)
    (= (stock K) 0)
    (= (stock N) 0)
    (= (stock M) 0)
    (= (stock H) 0)

    (link Workshop1 Workshop2)
    (link Workshop2 Workshop1)
    (link Workshop1 Workshop3)
    (link Workshop3 Workshop1)
    (link Workshop1 Workshop4)
    (link Workshop4 Workshop1)
    (link Workshop2 Workshop3)
    (link Workshop3 Workshop2)
    (link Workshop2 Workshop4)
    (link Workshop4 Workshop2)
    (link Workshop3 Workshop4)
    (link Workshop4 Workshop3)

    (link Home Workshop1)
    (link Workshop1 Home)
    (link Home Workshop2)
    (link Workshop2 Home)
    (link Home Workshop3)
    (link Workshop3 Home)
    (link Home Workshop4)
    (link Workshop4 Home)

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
    (link HomeDepot Workshop4)
    (link Workshop4 HomeDepot)

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
    (link Customer1 Workshop4)
    (link Workshop4 Customer1)
    
    (link Customer2 Workshop1)
    (link Workshop1 Customer2)
    (link Customer2 Workshop2)
    (link Workshop2 Customer2)
    (link Customer2 Workshop3)
    (link Workshop3 Customer2)
    (link Customer2 Workshop4)
    (link Workshop4 Customer2)
    
    
    (link Customer3 Workshop1)
    (link Workshop1 Customer3)
    (link Customer3 Workshop2)
    (link Workshop2 Customer3)
    (link Customer3 Workshop3)
    (link Workshop3 Customer3)
    (link Customer3 Workshop4)
    (link Workshop4 Customer3)

    (at Home)
	(can_produce_A Workshop1)
	(can_produce_B Workshop3)			
	(can_produce_C Workshop2)
	(can_produce_D Workshop3)
	(can_produce_L Workshop4)
	(can_produce_F Workshop2)
    (can_produce_G Workshop4)
	(can_supply HomeDepot)
	
    )
	
    (:goal (and (delivered A Customer1) (delivered B Customer3) (delivered L Customer3) ) )
)
