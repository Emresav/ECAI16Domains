;; one more bank added.
;; at start there must be a link to travel from one location to another.
(define (problem nightout)
 (:domain nightout)
 
 (:objects pub supermarket Home - location
           bank1 bank2 bank3 bank4 - location
           dollar - currency)
 
 (:init (at  Home)
        (canbuy supermarket dollar)
        (canwithdraw_money bank1)
        (canwithdraw_money bank2)
        (canwithdraw_money bank3)
        (canwithdraw_money bank4)
 		(available)
        
        (= (maxwithdraw bank1 dollar) 150)

        (= (maxwithdraw bank2 dollar) 150)

        (= (maxwithdraw bank3 dollar) 150)

        (= (maxwithdraw bank4 dollar) 150)
      
        (= (inpocket dollar) 2)

    (link bank1 bank2)
    (link bank2 bank1)
    (link bank1 bank3)
    (link bank3 bank1)
    (link bank1 bank4)
    (link bank4 bank1)
    (link bank2 bank3)
    (link bank3 bank2)
    (link bank2 bank4)
    (link bank4 bank2)
    (link bank3 bank4)
    (link bank4 bank3)

    (link Home bank1)
    (link bank1 Home)
    (link Home bank2)
    (link bank2 Home)
    (link Home bank3)
    (link bank3 Home)
    (link Home bank4)
    (link bank4 Home)

    (link Home pub)
    (link pub Home)
    (link Home supermarket)
    (link supermarket Home)

    (link pub bank1)
    (link bank1 pub)
    (link pub bank2)
    (link bank2 pub)
    (link pub bank3)
    (link bank3 pub)
    (link pub bank4)
    (link bank4 pub)
    
    (link supermarket bank1)
    (link bank1 supermarket)
    (link supermarket bank2)
    (link bank2 supermarket)
    (link supermarket bank3)
    (link bank3 supermarket)
    (link supermarket bank4)
    (link bank4 supermarket)
    
    
 )
		
 (:goal (and (have_enough dollar) (gotsnacks) (at pub)) )
) 