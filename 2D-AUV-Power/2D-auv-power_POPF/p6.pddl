(define (problem auv-3D-problem1)
	(:domain auv-2D-1)

	(:init 
        (can-move)
        (= (x) 20)
        (= (y) 20)
    )

	(:goal
		(and
            (sample-takenA) (sample-takenB) (sample-takenC) (sample-takenD) (sample-takenH) ))

)