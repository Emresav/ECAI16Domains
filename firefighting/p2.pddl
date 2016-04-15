(define (problem auv-3D-problem1)
	(:domain auv-2D-1)

	(:init 
        (fire1-on)
        (fire2-on)
        (= (x) 0)
        (= (y) 0)
        (= (maxVx) 30)
        (= (maxVy) 30)
        (available)
    )

	(:goal
		(and
            (photo1) (photo2)
            ))

)