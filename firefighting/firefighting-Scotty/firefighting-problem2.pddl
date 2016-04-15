(define (problem firefighting-problem2)
	(:domain firefighting2)

	(:init 
        (fire1-on)
        (fire2-on)
        ; (fire1-extinguished)
        (x 0 0)
        (y 0 0)
        ; (x 200 200)
        ; (y -100 -100)

    )

	(:goal
		(and
            (photo1)
            (photo2)
            ))

)