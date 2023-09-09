(define (problem rover-the-robot-initial-prob)
(:domain robot-rover)
(:objects
    yellowrock greenrock - mineral
    lab1 - lab
    roverobot - robot
    L1 L2 L3 L4 L5 - location
    emp - empty
)
(:init		  
	        (there_a_mineral yellowrock L1)
		(there_a_mineral greenrock L2)
		(there_a_lab lab1 L5)	
		(at roverobot L4)
		(clear emp L4)
		(clear emp L3)
		(valid_move L4 L3)
		(valid_move L3 L4)
		(valid_move L4 L5)
		(valid_move L5 L4)
		(valid_move L2 L4)
		(valid_move L3 L2)
		(valid_move L1 L3)
		(valid_move L3 L1)
)
(:goal
(and
        
	(there_a_mineral yellowrock L5)
	(there_a_mineral greenrock L5)
        (at roverobot L5)
)       
)
)
