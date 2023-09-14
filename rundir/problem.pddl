(define (problem rover-the-robot-initial-prob)
	(:domain robot-rover)
	(:objects
		yellowrock greenrock bluerock blackrock whiterock pinkrock purplerock - mineral
		lab1 - laboratory
		roverobot - robot
		L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 - location
	)
	(:init
		(rover roverobot)
		(mineral yellowrock)
		(mineral greenrock)
		(mineral bluerock)
		(mineral blackrock)
		(mineral whiterock)
		(mineral pinkrock)
		(mineral purplerock)

		(location L1)
		(location L2)
		(location L3)
		(location L4)
		(location L5)
		(location L6)
		(location L7)
		(location L8)
		(location L9)
		(location L10)
		(location L11)

		(lab lab1)
		(rover_is_discharge roverobot)

		(there_a_mineral yellowrock L1)
		(there_a_mineral greenrock L2)
		(there_a_mineral bluerock L6)
		(there_a_mineral whiterock L7)
		(there_a_mineral purplerock L8)
		(there_a_mineral blackrock L9)
		(there_a_mineral pinkrock L11)

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
		(move L6 L7)
		(move L7 L2)
		(move L6 L10)
		(move L10 L6)
		(move L10 L11)
		(move L11 L10)
		(move L6 L8)
		(move L8 L9)
		(move L9 L1)

	)
	(:goal
		(and

			(there_a_mineral yellowrock L5)
			(there_a_mineral greenrock L5)
			(there_a_mineral bluerock L5)

			(there_a_mineral whiterock L5)
			(there_a_mineral purplerock L5)
			(there_a_mineral pinkrock L5)
			(there_a_mineral blackrock L5)
			(at L5)
		)
	)
)