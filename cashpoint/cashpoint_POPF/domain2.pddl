(define (domain nightout)
(:requirements :typing :fluents :durative-actions
                 :duration-inequalities)
(:types  location
        currency)

(:predicates    (at ?a - location)
                (canwithdraw_money ?b - location)
                (canbuy ?a - location ?z - currency)
                (gotsnacks)
				(available)
                (have_enough ?z - currency)
		)
(:functions     (inpocket ?z - currency)  
                (maxwithdraw ?b - location ?z - currency)
)
                 
(:durative-action goto
:parameters (?a ?b - location)
:duration (= ?duration 5)
:condition (and (at start (at ?a)) (at start (available)) )
:effect (and       (at start (not (at ?a))) (at start (not (available)))
                   (at end (at ?b))(at end (available))
        ))
        
(:durative-action withdraw_money_1unit
:parameters (?b - location ?z1 - currency)
:duration (= ?duration 2)
:condition (and (over all (at ?b)) 
                (at start (>= (maxwithdraw ?b ?z1) 0 ))
                (at end (>= (maxwithdraw ?b ?z1) 0))
                (at start (available))
                (at start (canwithdraw_money ?b))
				)
:effect (and   	
                (at start (not (available)))
                (at start (increase (inpocket ?z1) 1))
                (at start (decrease (maxwithdraw ?b ?z1) 1))
                (at end (available))
        ))

(:durative-action withdraw_money_5unit
:parameters (?b - location ?z1 - currency)
:duration (= ?duration 2)
:condition (and (over all (at ?b)) 
                (at start (>= (maxwithdraw ?b ?z1) 0 ))
                (at end (>= (maxwithdraw ?b ?z1) 0))
                (at start (available))
                (at start (canwithdraw_money ?b))
				)
:effect (and   	
                (at start (not (available)))
                (at start (increase (inpocket ?z1) 5))
                (at start (decrease (maxwithdraw ?b ?z1) 5))
                (at end (available))
        ))

(:durative-action withdraw_money_10unit
:parameters (?b - location ?z1 - currency)
:duration (= ?duration 2)
:condition (and (over all (at ?b)) 
                (at start (>= (maxwithdraw ?b ?z1) 0 ))
                (at end (>= (maxwithdraw ?b ?z1) 0))
                (at start (available))
                (at start (canwithdraw_money ?b))
				)
:effect (and   	
                (at start (not (available)))
                (at start (increase (inpocket ?z1) 10))
                (at start (decrease (maxwithdraw ?b ?z1) 10))
                (at end (available))
        ))

(:durative-action withdraw_money_20unit
:parameters (?b - location ?z1 - currency)
:duration (= ?duration 2)
:condition (and (over all (at ?b)) 
                (at start (>= (maxwithdraw ?b ?z1) 0 ))
                (at end (>= (maxwithdraw ?b ?z1) 0))
                (at start (available))
                (at start (canwithdraw_money ?b))
				)
:effect (and   	
                (at start (not (available)))
                (at start (increase (inpocket ?z1) 20 ))
                (at start (decrease (maxwithdraw ?b ?z1) 20 ))
                (at end (available))
        ))

(:durative-action withdraw_money_40unit
:parameters (?b - location ?z1 - currency)
:duration (= ?duration 2)
:condition (and (over all (at ?b)) 
                (at start (>= (maxwithdraw ?b ?z1) 0 ))
                (at end (>= (maxwithdraw ?b ?z1) 0))
                (at start (available))
                (at start (canwithdraw_money ?b))
                )
:effect (and    
                (at start (not (available)))
                (at start (increase (inpocket ?z1) 40 ))
                (at start (decrease (maxwithdraw ?b ?z1) 40 ))
                (at end (available))
        ))
        
        
(:durative-action buy_snacks
:parameters (?a - location ?z - currency)
:duration (= ?duration 1)
:condition (and     (at start (at ?a))
                    (over all (at ?a))
                    (at start (available))
                    (at start (>= (inpocket ?z) 5))
                    (at end (>= (inpocket ?z) 0))
                    (at start (canbuy ?a ?z)) )
:effect (and    (at start (decrease (inpocket ?z) 5)) 
                (at start (not (available)))
                (at end (gotsnacks))
                (at end (available))
        ))
        
(:durative-action check_pocket
:parameters (?z - currency)
:duration (<= ?duration 0.5)
:condition (and     (at start (>= (inpocket ?z) 120) )
                    (at start (available))
                    (at end (>= (inpocket ?z) 0) )  )
:effect (and        
                    (at start (not (available)))
                    (at end (have_enough ?z)) 
                    (at start (decrease (inpocket ?z) 120))
                    (at end (available)) ) )      

)      
