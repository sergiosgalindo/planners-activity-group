(define (problem rover-the-robot-initial-prob)
(:domain robot-rover)
(:objects
    yellowrock greenrock - mineral
    lab1 - lab
    roverobot - rover
    L1 L2 L3 L4 L5 - field
)
(:init
      (robot roverobot)
      (at roverobot L4)
      (visited L4)
      (empty L3)
      (there_is_a_lab lab1)
      (at lab1 L5)
      (there_is_a_mineral yellowrock)
      (at yellowrock L1)
      (there_is_a_mineral greenrock)
      (at yellowrock L2)
      (valid_move L1 L3)
      (valid_move L3 L1)
      (valid_move L3 L2)
      (valid_move L2 L4)
      (valid_move L3 L4)
      (valid_move L4 L3)
      (valid_move L4 L5)
      (valid_move L5 L4)
)
(:goal
(and
    (at yellowrock L5)
    (at greenrock L5)
    (at roverobot L5)
    (empty L1)
    (empty L2)
)
)
)
