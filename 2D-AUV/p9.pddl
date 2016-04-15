(define (problem auv-3D-problem1)
	(:domain auv-2D-1)

	(:init 
        (can-move)
        (= (x) 75)
        (= (y) 85)
        (= (maxVx) 2)
        (= (maxVy) 2)
    )

	(:goal
		(and
            (sample-takenA) (sample-takenB) 
            (sample-takenC) (sample-takenD) 
            (sample-takenE) (sample-takenF) (sample-takenG) ))

)