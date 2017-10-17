(define
	(domain geralt)
	(:requirements :adl)
	(:predicates
	    (poziomo ?x ?y)
	    (pionowo ?x ?y)
		(trakt ?x)
		(geralt ?x)
		(wywerna ?x)
		(pusty ?x)
	)
	
	(:action idz
		:parameters (?x ?y)
		:precondition
		(and
			(geralt ?x)
			(or
			    (poziomo ?x ?y)
			    (pionowo ?x ?y)
			)
			(not(wywerna ?y))
		)
		:effect
		(and
			(geralt ?y)
			(not (geralt ?x))
		)
	)
	
	(:action aard
		:parameters (?x ?y ?z)
		:precondition
		(and
			(geralt ?x)
			(wywerna?y)
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
			(pusty ?z)
			(not (= ?x ?z))
		)
		:effect
		(and
		    (wywerna ?z)
		    (not (wywerna?y))
		    (pusty ?y)
		    (not(pusty ?z))
		)
	)
)