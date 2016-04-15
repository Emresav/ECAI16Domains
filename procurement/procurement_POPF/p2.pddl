;; Workshop number increased
;; item F aand G, H added

(define (problem procurement_problem)
	(:domain procurement_truck)
	(:objects
		;; end and intermediate products are A and C
        A - itemA
		C - itemC
		F - itemF
		;; raw materials are B, D and E
		B - itemB
        D - itemD
        E - itemE

		HomeDepot - location
		Workshop1 Workshop2 - location
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
	(can_produce_A Workshop1)			
	(can_produce_C Workshop2)
	(can_supply HomeDepot)
	
    )
	
    (:goal (and (delivered A JuniperStreet) ) )
)
