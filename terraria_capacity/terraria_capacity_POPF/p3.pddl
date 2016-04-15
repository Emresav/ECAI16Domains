(define (problem terraria_problem)
	(:domain terraria)
	(:objects
                cobweb1 - cobweb iron1 - iron_bar chain1 - chain 
               silk1 - silk bed1 - bed wood1 - wood 
	)
	(:init
    (available)
    (ready_workbench)
    (= (stock cobweb1) 10)
    (= (stock iron1) 1)
    (= (stock chain1) 0)
    (= (stock silk1) 0)
    (= (stock bed1) 0)
    (= (stock wood1) 3)
    )
	
    (:goal (and (finished) ))

)
