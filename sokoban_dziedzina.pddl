(define
    (domain sokoban)
    (:requirements :equality)
    (:predicates
		(robot ?x)
		(paczka ?y)
		(poziomo ?x ?y)
		(pionowo ?x ?y)
	    (cel ?x)
	)
    
    ;bez paczki
    (:action idz
		:parameters (?x ?y)
		:precondition
		(and
			(robot ?x)
			(not (paczka ?y))
			(or
    			(poziomo ?x ?y)
    			(pionowo ?x ?y)
			)
		)
		:effect
		(and
		    (robot ?y)
			(not (robot ?x))
		)
	)
	
	;z paczka
	 (:action pchaj
		:parameters (?x ?y ?z)
		:precondition
		(and
			(robot ?x)
			(paczka ?y)
			(not(paczka ?z))
			(not (= ?x ?z))
				(or
				    (and
        			    (poziomo ?x ?y)
        			    (poziomo ?y ?z)
    			    )
    			    (and
    			        (pionowo ?x ?y)
    			        (pionowo ?y ?z)
    			    )
			    )
		)
		:effect
		(and
    		(robot ?y)
    		(not (robot ?x))
			(paczka ?z)
			(not (paczka ?y))
		)
	)



)