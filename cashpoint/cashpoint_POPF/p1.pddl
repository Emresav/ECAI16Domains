;; starting from this problem, we now can withdraw 2 different currencies.

(define (problem nightout)
 (:domain nightout)
 
 (:objects pub supermarket home - location
           bank1 bank2 - location
           dollar - currency)
 
 (:init (at  home)
        (canbuy supermarket dollar)
        (canwithdraw_money bank1)
 		(available)
        
        (= (maxwithdraw bank1 dollar) 200)

        (= (maxwithdraw bank2 dollar) 200)
      
        (= (inpocket dollar) 2)
 )
		
 (:goal (and (have_enough dollar) (gotsnacks) (at pub)) )
) 