;; we now have 3 banks, need more dollars, and have limited cash at the banks.
;; also money we need is increased from 100 to 120;

(define (problem nightout)
 (:domain nightout)
 
 (:objects pub supermarket home - location
           bank1 bank2 bank3 - location
           dollar - currency)
 
 (:init (at  home)
        (canbuy supermarket dollar)
        (canwithdraw_money bank1)
 		(available)
        
        (= (maxwithdraw bank1 dollar) 150)

        (= (maxwithdraw bank2 dollar) 150)

        (= (maxwithdraw bank3 dollar) 150)
      
        (= (inpocket dollar) 2)
 )
		
 (:goal (and (have_enough dollar) (gotsnacks) (at pub)) )
) 