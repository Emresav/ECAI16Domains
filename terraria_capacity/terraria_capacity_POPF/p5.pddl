(define (problem terraria_problem)
	(:domain terraria)
	(:objects
                cobweb1 - cobweb iron1 - iron_bar chain1 - chain 
               silk1 - silk bed1 - bed wood1 - wood 
               Home Workshop Forest Mine - location
	)
	(:init
    ;; assume we already have a workbench, because it is cheap
    (available)
    (ready_workbench)

    ;; initial stock levels
    (= (stock cobweb1) 10)
    (= (stock iron1) 1)
    (= (stock chain1) 0)
    (= (stock silk1) 0)
    (= (stock bed1) 0)
    (= (stock wood1) 3)
    
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


    ;; associate locations
    (can_assemble Workshop)
    (can_lumber Forest)
    (can_mine Mine)
    (at Home)

    )
	
    (:goal (and (finished) ))

)
