(define (problem rover-the-robot-initial-prob)
(:domain robot-rover)
(:objects
    yellowrock greenrock bluerock - mineral
    lab1 - laboratory
    roverobot - robot
    L1 L2 L3 L4 L5 L6 - location
)
(:init		  
	    (rover roverobot)
	    (mineral yellowrock)
	    (mineral greenrock)
	    (mineral bluerock)
	    
	    (location L1)
	    (location L2)
	    (location L3)
	    (location L4)
	    (location L5)
	    (location L6)
	    
	    (lab lab1)
	    (rover_is_discharge roverobot)
	    
	    (there_a_mineral yellowrock L1)
		(there_a_mineral greenrock L2)
		(there_a_mineral bluerock L6)

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
		(move L3 L6)
		(move L6 L3)


)
(:goal
(and
        
	(there_a_mineral yellowrock L5)
	(there_a_mineral greenrock L5)
	(there_a_mineral bluerock L5)
        (at L5)
)       
)
)
