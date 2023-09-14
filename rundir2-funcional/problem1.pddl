(define (problem rover-the-robot-initial-prob-alt)
(:domain robot-rover)
(:objects
    yellowrock greenrock redrock - mineral
    lab1 lab2 lab3 - laboratory
    roverobot - robot
    L1 L2 L3 L4 L5 L6 L7 L8 L9 - location
)
(:init		  
	    (rover roverobot)
	    (mineral yellowrock)
	    (mineral greenrock)
	    (mineral redrock)
	    (location L1)(location L2)(location L3)(location L4)
	    (location L5)(location L6)(location L7)(location L8)(location L9)
	    (lab lab1)(lab lab2)(lab lab3)
	    (rover_is_discharge roverobot)
	    
	    (there_a_mineral yellowrock L1)
		(there_a_mineral greenrock L2)
		(there_a_mineral redrock L8)
		(there_a_lab lab1 L5)
		(there_a_lab lab2 L7)
		(there_a_lab lab3 L9)
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
		(move L1 L6)
		(move L6 L1)
		(move L6 L7)
		(move L7 L2)
		(move L4 L8)
		(move L8 L4)
		(move L8 L1)
		(move L6 L9)
		(move L9 L6)
)
(:goal
(and
        
	(there_a_mineral yellowrock L5)
	(there_a_mineral greenrock L7)
	(there_a_mineral redrock L9)
    (at L7)
)       
)
)
