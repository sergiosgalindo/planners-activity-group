(define (problem rover-the-robot-initial-prob)
(:domain robot-rover)
(:objects
    yellowrock greenrock - mineral
    lab1 - laboratory
    roverobot - robot
    L1 L2 L3 L4 L5 - location
)
(:init		  
	    (rover roverobot)
	    (mineral yellowrock)
	    (mineral greenrock)
	    (location L1)
	    (location L2)
	    (location L3)
	    (location L4)
	    (location L5)
	    (lab lab1)
	    (rover_is_discharge roverobot)
	    
	    (there_a_mineral yellowrock L1)
		(there_a_mineral greenrock L2)
		(there_a_lab lab1 L5)	
		(at L4)
		(move L4 L3)
		(move L3 L4)
		(move L4 L5)
		(move L5 L4)
		(move L2 L4)
		(move L3 L2)
		(move L1 L3)
		(move L3 L1)
)
(:goal
(and
        
	(there_a_mineral yellowrock L5)
	(there_a_mineral greenrock L5)
        (at L5)
)       
)
)
