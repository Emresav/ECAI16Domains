(define (problem auv-3D-problem1)
	(:domain auv-2D-1)

	(:init 
        (fire1-on)
        (= (x) 0)
        (= (y) 0)
        (= (maxVx) 2)
        (= (maxVy) 2)
        (available)
    )

	(:goal
		(and
            (photo1)
            ))

)