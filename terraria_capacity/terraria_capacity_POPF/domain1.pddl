;; now we have capacity constraint..  (at end (<= (+ ?cob (+ ?iron ?chain_found) ) 100) )
;; bed needed increased to 15 from 10. ... but we cant have capacity constraints here.. so we do nothing about this..

(define (domain terraria)
(:requirements :typing :durative-actions :fluents :duration-inequalities)

(:types     resources products - items
                cobweb iron_bar chain - resources
                silk bed wood - products
)

    (:predicates (available)
                (finished)
                (ready_loom)
                (ready_sawmill)
                (ready_workbench)
          )

      (:functions   (stock ?e - items)
                    
            )

(:durative-action cut_a_tree_5unit
:parameters(?a - wood)
:duration (= ?duration 5)
:condition (and (at start (available))
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?a) 5))
                (at end (available))
))

(:durative-action cut_a_tree_10unit
:parameters(?a - wood)
:duration (= ?duration 5)
:condition (and (at start (available))
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?a) 10))
                (at end (available))
))

(:durative-action cut_a_tree_20unit
:parameters(?a - wood)
:duration (= ?duration 5)
:condition (and (at start (available))
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?a) 20))
                (at end (available))
))

(:durative-action cut_a_tree_80unit
:parameters(?a - wood)
:duration (= ?duration 5)
:condition (and (at start (available))
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?a) 80))
                (at end (available))
))

(:durative-action find_resources_5each
:parameters(?c - cobweb ?i - iron_bar ?ch - chain)
:duration (= ?duration 10)
:condition (and (at start (available))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) 5 ))
                (at start (increase (stock ?i) 5 ))
                (at start (increase (stock ?ch) 5 ))
                (at end (available))
))

(:durative-action find_resources_10each
:parameters(?c - cobweb ?i - iron_bar ?ch - chain)
:duration (= ?duration 10)
:condition (and (at start (available))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) 10 ))
                (at start (increase (stock ?i) 10 ))
                (at start (increase (stock ?ch) 10 ))
                (at end (available))
))

(:durative-action find_resources_20each
:parameters(?c - cobweb ?i - iron_bar ?ch - chain)
:duration (= ?duration 10)
:condition (and (at start (available))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) 20 ))
                (at start (increase (stock ?i) 20 ))
                (at start (increase (stock ?ch) 20 ))
                (at end (available))
))

(:durative-action find_resources_80each
:parameters(?c - cobweb ?i - iron_bar ?ch - chain)
:duration (= ?duration 10)
:condition (and (at start (available))
                )
:effect (and    (at start (not (available)))
                (at start (increase (stock ?c) 80 ))
                (at start (increase (stock ?i) 80 ))
                (at start (increase (stock ?ch) 80 ))
                (at end (available))
))
 
(:durative-action make_silk_5unit
:parameters(?s1 - silk ?cob - cobweb)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at start (ready_loom))
                (at end (>= (stock ?cob) 35) )
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?s1) 5))
                (at end (decrease (stock ?cob) 35 ))
                (at end (available))
))

(:durative-action make_silk_10unit
:parameters(?s1 - silk ?cob - cobweb)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at start (ready_loom))
                (at end (>= (stock ?cob) 70 ) )
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?s1) 10 ))
                (at end (decrease (stock ?cob) 70 ))
                (at end (available))
))

(:durative-action make_silk_40unit
:parameters(?s1 - silk ?cob - cobweb)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at start (ready_loom))
                (at end (>= (stock ?cob) 280 ) )
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?s1) 40 ))
                (at end (decrease (stock ?cob) 280 ))
                (at end (available))
))


(:durative-action assemble_a_loom
:parameters(?w1 - wood)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (ready_sawmill))
                (at end (>= (stock ?w1) 12) ) 
                )
:effect (and    (at start (not (available)))
                (at end (decrease (stock ?w1) 12))
                (at end (available))
                (at end (ready_loom))
))

(:durative-action assemble_a_sawmill
:parameters(?w1 - wood ?iron - iron_bar ?ch - chain)
:duration (= ?duration 7)
:condition (and (at start (available))
                (at start (ready_workbench))
                (at start (>= (stock ?w1) 10) ) 
                (at start (>= (stock ?iron) 2) )
                (at start (>= (stock ?ch) 1) )
                )
:effect (and    (at start (not (available)))
                (at end (decrease (stock ?w1) 10))
                (at end (decrease (stock ?iron) 2) )
                (at end (decrease (stock ?ch) 1) )
                (at end (available))
                (at end (ready_sawmill))
))

(:durative-action assemble_beds_5unit
:parameters(?w1 - wood ?s1 - silk ?b - bed)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at end (ready_sawmill)) ; made on sawmill
                (at end (>= (stock ?w1) 75 ) ) 
                (at end (>= (stock ?s1) 25 ) )
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?b) 5 ) )
                (at end (decrease (stock ?w1) 75 ) )
                (at end (decrease (stock ?s1) 25 ) )
                (at end (available))
))

(:durative-action assemble_beds_10unit
:parameters(?w1 - wood ?s1 - silk ?b - bed)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at end (ready_sawmill)) ; made on sawmill
                (at end (>= (stock ?w1) 150 ) ) 
                (at end (>= (stock ?s1) 50 ) )
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?b) 10 ) )
                (at end (decrease (stock ?w1) 150 ) )
                (at end (decrease (stock ?s1) 50 ) )
                (at end (available))
))

(:durative-action assemble_beds_20unit
:parameters(?w1 - wood ?s1 - silk ?b - bed)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at end (ready_sawmill)) ; made on sawmill
                (at end (>= (stock ?w1) 300 ) ) 
                (at end (>= (stock ?s1) 100 ) )
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?b) 20 ) )
                (at end (decrease (stock ?w1) 300 ) )
                (at end (decrease (stock ?s1) 100 ) )
                (at end (available))
))

(:durative-action assemble_beds_80unit
:parameters(?w1 - wood ?s1 - silk ?b - bed)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at end (ready_sawmill)) ; made on sawmill
                (at end (>= (stock ?w1) 1200 ) ) 
                (at end (>= (stock ?s1) 400 ) )
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?b) 80 ) )
                (at end (decrease (stock ?w1) 1200 ) )
                (at end (decrease (stock ?s1) 400 ) )
                (at end (available))
))

(:durative-action place_beds
:parameters (?b - bed)
:duration (<= ?duration 0.5)
:condition (and     (at start (>= (stock ?b) 5 ) )
                    (at start (available))
                    (at end (>= (stock ?b) 0) )  )
:effect (and        
                    (at start (not (available)))
                    (at end (finished)) 
                    (at start (decrease (stock ?b) 5 ))
                    (at end (available)) ) )      

)
