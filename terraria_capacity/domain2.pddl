;; number of bed needed increased from 5 to 10

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

(:durative-action cut_a_tree
:parameters(?a - wood)
:control (?w - number)
:duration (= ?duration 5)
:condition (and (at start (available))
                (at start (>= ?w 0)) 
                (at start (<= ?w 100)) ;; you can get up to 50 woods from a tree
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?a) ?w))
                (at end (available))
))

(:durative-action find_resources
:parameters(?c - cobweb ?i - iron_bar ?ch - chain)
:control (?cob ?iron ?chain_found - number)
:duration (= ?duration 10)
:condition (and (at start (available))
                (at end (>= ?chain_found 0))
                (at end (<= ?chain_found 5))
                (at end (>= ?iron 0))
                (at end (<= ?iron 30))
                (at end (>= ?cob 10)) ;; cobweb is quite common. there is no way not finding it.
                (at end (<= ?cob 40))
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?c) ?cob))
                (at end (increase (stock ?i) ?iron))
                (at end (increase (stock ?ch) ?chain_found))
                (at end (available))
))

(:durative-action make_silk
:parameters(?s1 - silk ?cob - cobweb)
:control (?silkmade - number)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at start (ready_loom))
                (at end (>= ?silkmade 0))
                (at end (<= ?silkmade 50))
                (at end (>= (stock ?cob) (* ?silkmade 7)) )
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?s1) ?silkmade))
                (at end (decrease (stock ?cob) (* ?silkmade 7)))
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

(:durative-action assemble_beds
:parameters(?w1 - wood ?s1 - silk ?b - bed)
:control (?beds - number)
:duration (= ?duration 3)
:condition (and (at start (available))
                (at end (ready_sawmill)) ; made on sawmill
                (at start (>= ?beds 0))
                (at start (<= ?beds 15))
                (at end (>= (stock ?w1) (* ?beds 15) ) ) 
                (at end (>= (stock ?s1) (* ?beds 5) ) )
                )
:effect (and    (at start (not (available)))
                (at end (increase (stock ?b) ?beds) )
                (at end (decrease (stock ?w1) (* ?beds 15) ) )
                (at end (decrease (stock ?s1) (* ?beds 5) ) )
                (at end (available))
))

(:action finish
:parameters (?b - bed)
:precondition (and (>= (stock ?b) 10) (available))
:effect (and (finished)) )
)
