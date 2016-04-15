;; capacity constraint is decreased. need to find resources more often

(define (domain terraria_truck2)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:types     resources products - items
                cobweb iron_bar lead_bar chain - resources
                silk bed wood chest - products
                location
)   

    (:predicates (available)
                (placed_beds)
                (placed_chests)
                (ready_loom)
                (ready_sawmill)
                (ready_workbench)
                (can_assemble ?loc - location)
                (can_lumber ?loc - location)
                (can_mine ?loc - location)
                (at ?loc - location)
                (link ?loc1 - location ?loc2 - location)

          )

      (:functions   (stock ?e - items)
                    (distance ?loc1 - location ?loc2 - location)
                    
            )

(:durative-action cut_a_tree
:parameters(?a - wood ?loc1 - location)
:control (?w - number)
:duration (= ?duration 2)
:condition (and (at start (available))
                (at start (can_lumber ?loc1))
                (at start (at ?loc1))
                (at start (>= ?w 5))
                (at start (<= ?w 100)) ;; you can get up to 100 woods from a tree
                (at end (>= (stock ?a) 0))
                (at start (>= (stock ?a) 0))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?a) ?w))
                (at end (available))
))

(:durative-action find_resources
:parameters(?c - cobweb ?i - iron_bar ?lb - lead_bar ?ch - chain ?loc1 - location)
:control (?cob ?iron ?lead ?chain_found - number)
:duration (= ?duration 10)
:condition (and (at start (available))
                (at start (can_mine ?loc1))
                (at start (at ?loc1))
                (at start (>= ?chain_found 1))
                (at start (<= ?chain_found 10))
                (at start (>= ?iron 5))
                (at start (<= ?iron 60))
                 (at start (>= ?lead 5))
                (at start (<= ?lead 60))
                (at start (>= ?cob 10)) ;; cobweb is quite common. there is no way not finding it.
                (at start (<= ?cob 60))
                (at start (<= (+ ?cob (+ ?iron (+ ?chain_found ?lead) ) )  40) )
                (at end (>= (stock ?c) 0))
                (at end (>= (stock ?i) 0))
                (at end (>= (stock ?ch) 0))
                (at end (>= (stock ?lb) 0))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) ?cob))
                (at start (increase (stock ?i) ?iron))
                (at start (increase (stock ?lb) ?lead))
                (at start (increase (stock ?ch) ?chain_found))
                (at end (available))
))

(:durative-action make_silk
:parameters(?s1 - silk ?cob - cobweb ?loc1 - location)
:control (?silkmade - number)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_loom))
                (at start (can_assemble ?loc1))
                (at start (at ?loc1))
                (at start (>= ?silkmade 5))
                (at start (<= ?silkmade 100))
                (at start (>= (stock ?cob) (* ?silkmade 7)) )
                (at end (>= (stock ?s1) 0) )
                (at end (>= (stock ?cob) 0) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?s1) ?silkmade))
                (at start (decrease (stock ?cob) (* ?silkmade 7) ))
                (at end (available))
))

(:durative-action assemble_a_loom
:parameters(?w1 - wood ?loc1 - location)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_sawmill))
                (at start (>= (stock ?w1) 12) )
                (at start (at ?loc1))
                (at start (can_assemble ?loc1)) 
                (at end (>= (stock ?w1) 0) )
                )
:effect (and    (at start (not (available)))
                (at end (decrease (stock ?w1) 12))
                (at end (available))
                (at end (ready_loom))
))

(:durative-action assemble_a_sawmill
:parameters(?w1 - wood ?iron - iron_bar ?ch - chain ?loc1 - location)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_workbench))
                (at start (>= (stock ?w1) 10) ) 
                (at start (>= (stock ?iron) 2) )
                (at start (>= (stock ?ch) 1) )
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at end (>= (stock ?w1) 0) )
                (at end (>= (stock ?iron) 0) )
                (at end (>= (stock ?ch) 0) )
                )
:effect (and    (at start (not (available)))
                (at end (decrease (stock ?w1) 10))
                (at end (decrease (stock ?iron) 2) )
                (at end (decrease (stock ?ch) 1) )
                (at end (available))
                (at end (ready_sawmill))
))

(:durative-action assemble_beds
:parameters(?w1 - wood ?s1 - silk ?b - bed ?loc1 - location)
:control (?beds - number)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_sawmill)) ; made on sawmill
                (at start (>= ?beds 3))
                (at start (<= ?beds 30))
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?w1) (* ?beds 15) ) ) 
                (at start (>= (stock ?s1) (* ?beds 5) ) )
                (at end (>= (stock ?w1) 0 ) ) 
                (at end (>= (stock ?s1) 0 ) )
                (at start (>= (stock ?w1) 0 ) ) 
                (at start (>= (stock ?s1) 0 ) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?b) ?beds) )
                (at start (decrease (stock ?w1) (* ?beds 15) ) )
                (at start (decrease (stock ?s1) (* ?beds 5) ) )
                (at end (available))
))

(:durative-action produce_chests
:parameters(?c - chest ?w1 - wood ?lb - lead_bar ?i - iron_bar ?loc1 - location)
:control (?chests - number)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_workbench)) ; made on sawmill
                (at start (>= ?chests 3))
                (at start (<= ?chests 30))
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?w1) (* ?chests 8) ) ) 
                (at start (>= (stock ?lb) (* ?chests 2) ) )
                (at start (>= (stock ?i) (* ?chests 2) ) )
                (at end (>= (stock ?w1) 0 ) ) 
                (at end (>= (stock ?lb) 0 ) )
                (at end (>= (stock ?i) 0 ) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) ?chests) )
                (at start (decrease (stock ?w1) (* ?chests 8) ) )
                (at start (decrease (stock ?lb) (* ?chests 2) ) )
                (at start (decrease (stock ?i) (* ?chests 2) ) )
                (at end (available))
))

(:durative-action Go_to
:parameters (?loc1 ?loc2 - location)
:duration (>= ?duration (distance ?loc1 ?loc2) )
:condition (and (at start (at ?loc1) )
                (at start (link ?loc1 ?loc2) ) 
                (at start (available)))
:effect (and       
            (at start (not (available)))
            (at start (not (at ?loc1)))
            (at end (at ?loc2))
           (at end (available))
        ))

(:durative-action place_beds
:parameters (?b - bed)
:duration (<= ?duration 0.5)
:condition (and     (at start (> (stock ?b) 10) )
                    (at start (available))
                    (at end (>= (stock ?b) 0) )  
					 )
:effect (and        
                    (at start (not (available)))
                    (at end (placed_beds)) 
                    (at start (decrease (stock ?b) 10))
                    (at end (available)) ) )

(:durative-action place_chests
:parameters (?c - chest)
:duration (<= ?duration 0.5)
:condition (and     
                    (at start (> (stock ?c) 10) )
                    (at start (available))
                    (at end (>= (stock ?c) 0) ) )
:effect (and        
                    (at start (not (available)))
                    (at end (placed_chests)) 
                    (at start (decrease (stock ?c) 10))
                    (at end (available)) ) )
)