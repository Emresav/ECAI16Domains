(define (problem auv-3D-problem1)
	(:domain auv-2D-1)

	(:init 
        (can-move)
        (x 0 40)
        (y 0 75)
    )

	(:goal
		(and
            (sample-takenA) (sample-takenB) 
            (sample-takenC) (sample-takenD) 
            (sample-takenE) (sample-takenF) 
            (sample-takenG) (sample-takenH)
            (sample-takenI) ))

)