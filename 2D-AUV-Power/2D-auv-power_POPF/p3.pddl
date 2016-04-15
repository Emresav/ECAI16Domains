(define (problem auv-3D-problem1)
	(:domain auv-2D-1)

	(:init 
        (can-move)
        (= (x) 10)
        (= (y) 10)
    )

	(:goal
		(and
            (sample-takenA) (sample-takenB) ))

)