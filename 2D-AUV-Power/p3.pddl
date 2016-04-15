(define (problem auv-3D-problem1)
	(:domain auv-2D-1)

	(:init 
        (can-move)
        (= (x) 10)
        (= (y) 10)
        (= (max_x) 5)
        (= (max_y) 5)
    )

	(:goal
		(and
            (sample-takenA) (sample-takenB) ))

)