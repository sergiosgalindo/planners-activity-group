(define (domain robot-rover)
      (:requirements :typing)
      (:types robot location state - object
               empty mineral lab - state)
      
      (:predicates
           (there_a_mineral ?rock - mineral ?field - location)
	   (there_a_lab ?lab - laboratory ?field - location)
	   (rover_is_charged ?rock - mineral ?r - robot)	  
	   (at ?r - robot ?field - location)
           (move ?from - location ?to - location)
           (clear ?c - empty ?from - location)
           (valid_move ?from ?to - location)
      )
      
      (:action valid_empty_location
       :parameters (?r - robot ?from ?to - location ?m - mineral ?la - lab ?e - empty)
       :precondition
                    (and 
                        (at ?r ?from)
                        (not (and (there_a_mineral ?m ?l) (there_a_lab ?lab ?la)))
                        (clear ?e ?l)
                    )
                    :effect(
                        and
                           (valid_move ?from ?to)
                           (at ?r ?from)
      		    )
	)
	
      (:action move_to_other_location
       :parameters (?r - robot ?from ?to - location)
       :precondition
                    (and 
                        (at ?r ?from)
                         (valid_move ?from ?to)
                    )
                    :effect(
                        and
                           (move ?from ?to)
                           (not(at ?r ?from))
                           (at ?r ?to)
      		    )
	)   
	
      (:action mineral_found
       :parameters (?r - robot ?from ?to - location ?m - mineral ?e - empty)
       :precondition
                    (and 
                        (at ?r ?from)
                        (there_a_mineral ?m ?from)
                        (valid_move ?from ?to)
                        (not (rover_is_charged ?m ?r))
                    )
                    :effect(
                        and
                           (rover_is_charged ?m ?r)
                           (not (there_a_mineral ?m ?from))
                           (clear ?e ?from)
      		    )
	)  
	
      (:action mineral_charged
       :parameters (?r - robot ?from ?to - location ?m - mineral)
       :precondition
                    (and 
                        (at ?r ?from)
                        (there_a_mineral ?m ?from)
                        (valid_move ?from ?to)
                        (rover_is_charged ?m ?r)
                    )
                    :effect(
                        and
                           (there_a_mineral ?m ?from)
                           (at ?r ?from)
      		    )
      )
	
      (:action mineral_discharge
       :parameters (?r - robot ?from ?to - location ?m - mineral ?l - lab)
       :precondition
                    (and 
                        (at ?r ?from)
                        (there_a_lab ?l ?from)
                        (valid_move ?from ?to)
                        (rover_is_charged ?m ?r)
                    )
                    :effect(
                        and
                           (not(rover_is_charged ?m ?r))
                           (there_a_mineral ?m ?from)
      		    )
	)  
	
)
