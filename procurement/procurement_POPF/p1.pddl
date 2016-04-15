(define (problem procurement_problem)
	(:domain procurement_truck)
	(:objects
		;; end and intermediate products are A and C
        A - itemA
		C - itemC
		;; raw materials are B, D and E
		B - itemB
        D - itemD
        E - itemE
		
		HomeDepot - location
		Workshop - location
		JuniperStreet - location
		WoodLane - location
		
	)
	(:init
    (available)
	
	;; product stocks
    (= (stock A) 0)
    (= (stock C) 0) 
	
	;; raw material stocks
	(= (stock B) 0)
    (= (stock D) 0)
    (= (stock E) 0)
    
    (at WoodLane)
	(can_produce_A Workshop)			
	(can_produce_C Workshop)
	(can_supply HomeDepot)
	
    )
	
    (:goal (and (delivered A JuniperStreet) ))
)
