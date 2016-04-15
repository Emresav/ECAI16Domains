;; ;; capacity constraint is decreased. need to find resources more often.. therefore we decrease min unit of find_resources to 2 from 3
(define (domain terraria_truck2)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:types     resources products - items
                cobweb iron_bar lead_bar chain platinum_bar - resources
                silk bed wood chest platinum_sword - products
                location
)   

    (:predicates (available)
                (placed_beds)
                (placed_chests)
                (placed_swords)
                (ready_loom)
                (ready_sawmill)
                (ready_anvil)
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

(:durative-action cut_a_tree_5unit
:parameters(?a - wood ?loc1 - location)
:duration (= ?duration 2)
:condition (and (at start (available))
                (at start (can_lumber ?loc1))
                (at start (at ?loc1))
                (at end (>= (stock ?a) 0))
                (at start (>= (stock ?a) 0))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?a) 5))
                (at end (available))
))

(:durative-action cut_a_tree_10unit
:parameters(?a - wood ?loc1 - location)
:duration (= ?duration 2)
:condition (and (at start (available))
                (at start (can_lumber ?loc1))
                (at start (at ?loc1))
                (at end (>= (stock ?a) 0))
                (at start (>= (stock ?a) 0))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?a) 10 ))
                (at end (available))
))

(:durative-action cut_a_tree_20unit
:parameters(?a - wood ?loc1 - location)
:duration (= ?duration 2)
:condition (and (at start (available))
                (at start (can_lumber ?loc1))
                (at start (at ?loc1))
                (at end (>= (stock ?a) 0))
                (at start (>= (stock ?a) 0))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?a) 20 ))
                (at end (available))
))


(:durative-action cut_a_tree_40unit
:parameters(?a - wood ?loc1 - location)
:duration (= ?duration 2)
:condition (and (at start (available))
                (at start (can_lumber ?loc1))
                (at start (at ?loc1))
                (at end (>= (stock ?a) 0))
                (at start (>= (stock ?a) 0))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?a) 5))
                (at end (available))
))

(:durative-action find_resources_2unit
:parameters(?c - cobweb ?i - iron_bar ?ch - chain ?lb - lead_bar ?pb - platinum_bar  ?loc1 - location)
:duration (= ?duration 2)
:condition (and (at start (available))
                (at start (can_mine ?loc1))
                (at start (at ?loc1))
                (at end (>= (stock ?c) 0))
                (at end (>= (stock ?i) 0))
                (at end (>= (stock ?ch) 0))
                (at end (>= (stock ?lb) 0))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c)2 ))
                (at start (increase (stock ?i) 2 ))
                (at start (increase (stock ?ch) 2 ))
                 (at start (increase (stock ?lb) 2 ))
                  (at start (increase (stock ?pb) 2 ))
                (at end (available))
))

(:durative-action find_resources_20unit
:parameters(?c - cobweb ?i - iron_bar ?ch - chain ?lb - lead_bar ?pb - platinum_bar ?loc1 - location)
:duration (= ?duration 2)
:condition (and (at start (available))
                (at start (can_mine ?loc1))
                (at start (at ?loc1))
                (at end (>= (stock ?c) 0))
                (at end (>= (stock ?i) 0))
                (at end (>= (stock ?ch) 0))
                (at end (>= (stock ?lb) 0))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) 20))
                (at start (increase (stock ?i) 20))
                (at start (increase (stock ?ch) 20))
                 (at start (increase (stock ?lb) 20))
                  (at start (increase (stock ?pb) 20 ))
                (at end (available))
))

(:durative-action find_resources_40unit
:parameters(?c - cobweb ?i - iron_bar ?ch - chain ?lb - lead_bar ?pb - platinum_bar  ?loc1 - location)
:duration (= ?duration 2)
:condition (and (at start (available))
                (at start (can_mine ?loc1))
                (at start (at ?loc1))
                (at end (>= (stock ?c) 0))
                (at end (>= (stock ?i) 0))
                (at end (>= (stock ?ch) 0))
                (at end (>= (stock ?lb) 0))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) 40))
                (at start (increase (stock ?i) 40))
                (at start (increase (stock ?ch) 40 ))
                (at start (increase (stock ?lb) 40 ))
                 (at start (increase (stock ?pb) 40 ))
                (at end (available))
))

(:durative-action make_silk_5unit
:parameters(?s1 - silk ?cob - cobweb ?loc1 - location)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_loom))
                (at start (can_assemble ?loc1))
                (at start (at ?loc1))
                (at start (>= (stock ?cob) 35 ) )
                (at end (>= (stock ?s1) 0) )
                (at end (>= (stock ?cob) 0) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?s1) 5 ))
                (at start (decrease (stock ?cob) 35 ))
                (at end (available))
))

(:durative-action make_silk_20unit
:parameters(?s1 - silk ?cob - cobweb ?loc1 - location)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_loom))
                (at start (can_assemble ?loc1))
                (at start (at ?loc1))
                (at start (>= (stock ?cob) 140 ) )
                (at end (>= (stock ?s1) 0) )
                (at end (>= (stock ?cob) 0) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?s1) 20 ))
                (at start (decrease (stock ?cob) 140 ))
                (at end (available))
))

(:durative-action make_silk_40unit
:parameters(?s1 - silk ?cob - cobweb ?loc1 - location)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_loom))
                (at start (can_assemble ?loc1))
                (at start (at ?loc1))
                (at start (>= (stock ?cob) 280 ) )
                (at end (>= (stock ?s1) 0) )
                (at end (>= (stock ?cob) 0) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?s1) 40 ))
                (at start (decrease (stock ?cob) 280 ))
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

(:durative-action assemble_an_anvil
:parameters(?iron - iron_bar ?loc1 - location)
:duration (= ?duration 7)
:condition (and (at start (available))
                (at start (ready_workbench))
                (at start (>= (stock ?iron) 5) )
                (at end (>= (stock ?iron) 0) )
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                )
:effect (and    (at start (not (available)))
                (at start (decrease (stock ?iron) 5) )
                (at end (available))
                (at end (ready_anvil))
))


(:durative-action assemble_beds_1unit
:parameters(?w1 - wood ?s1 - silk ?b - bed ?loc1 - location)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_sawmill)) ; made on sawmill
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?w1) 15 ) ) 
                (at start (>= (stock ?s1) 5 ) )
                (at end (>= (stock ?w1) 0 ) ) 
                (at end (>= (stock ?s1) 0 ) )
                (at start (>= (stock ?w1) 0 ) ) 
                (at start (>= (stock ?s1) 0 ) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?b) 1 ) )
                (at start (decrease (stock ?w1) 15 ) )
                (at start (decrease (stock ?s1) 5 ) )
                (at end (available))
))

(:durative-action assemble_beds_10unit
:parameters(?w1 - wood ?s1 - silk ?b - bed ?loc1 - location)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_sawmill)) ; made on sawmill
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?w1) 150 ) ) 
                (at start (>= (stock ?s1) 50 ) )
                (at end (>= (stock ?w1) 0 ) ) 
                (at end (>= (stock ?s1) 0 ) )
                (at start (>= (stock ?w1) 0 ) ) 
                (at start (>= (stock ?s1) 0 ) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?b) 10 ) )
                (at start (decrease (stock ?w1) 150 ) )
                (at start (decrease (stock ?s1) 50 ) )
                (at end (available))
))


(:durative-action produce_chests_1unit
:parameters(?c - chest ?w1 - wood ?lb - lead_bar ?i - iron_bar ?loc1 - location)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_workbench)) ; made on sawmill
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?w1) 8 ) ) 
                (at start (>= (stock ?lb) 2 ) )
                (at start (>= (stock ?i) 2 ) )
                (at end (>= (stock ?w1) 0 ) ) 
                (at end (>= (stock ?lb) 0 ) )
                (at end (>= (stock ?i) 0 ) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) 1 ) )
                (at start (decrease (stock ?w1) 8 ) )
                (at start (decrease (stock ?lb) 8 ) )
                (at start (decrease (stock ?i) 8 ) )
                (at end (available))
))

(:durative-action produce_chests_10unit
:parameters(?c - chest ?w1 - wood ?lb - lead_bar ?i - iron_bar ?loc1 - location)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_workbench)) ; made on sawmill
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?w1) 80 ) ) 
                (at start (>= (stock ?lb) 20 ) )
                (at start (>= (stock ?i) 20 ) )
                (at end (>= (stock ?w1) 0 ) ) 
                (at end (>= (stock ?lb) 0 ) )
                (at end (>= (stock ?i) 0 ) )
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) 10 ) )
                (at start (decrease (stock ?w1) 80 ) )
                (at start (decrease (stock ?lb) 80 ) )
                (at start (decrease (stock ?i) 8 ) )
                (at end (available))
))

(:durative-action produce_platinum_swords_1unit
:parameters(?s - platinum_sword ?pb - platinum_bar ?loc1 - location)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at start (ready_anvil)) ; made on anvil
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?pb) 5 ) ) 
                (at end (>= (stock ?pb) 0 ) ) 
                (at end (>= (stock ?s) 0 ) ) 
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?s) 1 ) )
                (at start (decrease (stock ?pb) 5 ) )
                (at end (available))
))

(:durative-action produce_platinum_swords_10unit
:parameters(?s - platinum_sword ?pb - platinum_bar ?loc1 - location)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at start (ready_anvil)) ; made on anvil
                (at start (at ?loc1))
                (at start (can_assemble ?loc1))
                (at start (>= (stock ?pb) 50 ) ) 
                (at end (>= (stock ?pb) 0 ) ) 
                (at end (>= (stock ?s) 0 ) ) 
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?s) 10 ) )
                (at start (decrease (stock ?pb) 50 ) )
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

(:durative-action place_swords
:parameters (?s - platinum_sword)
:duration (<= ?duration 0.5)
:condition (and     (at start (> (stock ?s) 10) )
                    (at start (available))
                    (at end (>= (stock ?s) 0) )  
                     )
:effect (and        
                    (at start (not (available)))
                    (at end (placed_swords)) 
                    (at start (decrease (stock ?s) 10))
                    (at end (available)) ) )


)
