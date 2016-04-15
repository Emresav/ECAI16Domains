(define (problem terraria_problem)
	(:domain terraria_truck2)
	(:objects
                cobweb1 - cobweb iron1 - iron_bar lead1 - lead_bar chain1 - chain platinum1 - platinum_bar
               silk1 - silk bed1 - bed sword1 - platinum_sword
               wood1 - wood chest1 - chest MahoganyWood - mahogany_wood IvyChest - ivy_chest
                Home Workshop Forest MahoganyForest Mine - location
	)
	(:init
    ;; assume we already have a workbench, because it is cheap
    (available)
    (ready_workbench)

    ;; initial stock levels
    (= (stock cobweb1) 10)
    (= (stock iron1) 1)
    (= (stock MahoganyWood) 2)
    (= (stock lead1) 5)
    (= (stock chain1) 0)
    (= (stock silk1) 0)
    (= (stock platinum1) 3)
    (= (stock bed1) 0)
    (= (stock sword1) 0)
    (= (stock chest1) 0)
    (= (stock wood1) 3)
    (= (stock IvyChest) 2)
    
    ;;distance constants between locations
    (= (distance Home Mine) 7)
    (= (distance Mine Home) 7)
    (= (distance Home Forest) 15)
    (= (distance Forest Home) 15)
    (= (distance Home Workshop) 10)
    (= (distance Workshop Home) 10)
    (= (distance Forest Mine) 20)
    (= (distance Mine Forest) 20)
    (= (distance Forest Workshop) 3)
    (= (distance Workshop Forest) 3)
    (= (distance Mine Workshop) 13)
    (= (distance Workshop Mine) 13)

    (= (distance MahoganyForest Mine) 30)
    (= (distance Mine MahoganyForest) 30)
    (= (distance MahoganyForest Workshop) 40)
    (= (distance Workshop MahoganyForest) 40)
    (= (distance Home MahoganyForest) 50)
    (= (distance MahoganyForest Home) 50)
    (= (distance MahoganyForest Forest) 20)
    (= (distance Forest MahoganyForest) 20)

     (link Home Mine)
     (link Mine Home)
     (link Home Forest)
     (link Forest Home)
     (link Home Workshop)
     (link Workshop Home)
     (link Forest Mine)
     (link Mine Forest)
     (link Forest Workshop)
     (link Workshop Forest)
     (link Mine Workshop)
     (link Workshop Mine)
     (link MahoganyForest Mine)
     (link Mine MahoganyForest)
     (link MahoganyForest Workshop)
     (link Workshop MahoganyForest)
     (link Home MahoganyForest)
     (link MahoganyForest Home)
     (link Forest MahoganyForest)
     (link MahoganyForest Forest)
    ;; associate locations
    (can_assemble Workshop)
    (can_lumber Forest)
    (can_lumber_mahogany MahoganyForest)
    (can_mine Mine)
    (at Home)

    )
	
    (:goal (and (placed_swords) (placed_beds) (placed_chests) (placed_ivy_chests) ))

)
