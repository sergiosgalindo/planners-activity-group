(define (domain robot-rover)
      (:requirements :typing)
      (:types robot location state - object
               mineral laboratory - state)
      
      (:predicates
           (rover ?r - robot)
		   (location ?field - location)
		   (mineral ?m - mineral)
		   (lab ?lab - laboratory)
		   (there_a_mineral ?rock - mineral ?field - location)
	       (there_a_lab ?lab - laboratory ?field - location)
	       (rover_is_charged ?rock - mineral ?r - robot)	  
	       (at ?field - location)
		   (rover_is_discharge ?r - robot)
           (move ?from ?to - location)
      )
	
      (:action move_to_other_location
       :parameters (?r - robot ?from ?to - location)
       :precondition
                    (and 
                           (rover ?r)
						   (location ?from)
						   (location ?to)
						   (at ?from)
						   (move ?from ?to)
                    )
                    :effect(
                        and
                           (at ?to)
						   (not(at ?from))
      		    )
	)   
	
      (:action mineral_found
       :parameters (?r - robot ?from - location ?m - mineral)
       :precondition
                    (and 
                        (mineral ?m)
						(location ?from)
						(rover ?r)
						(there_a_mineral ?m ?from)
						(at ?from)
						(rover_is_discharge ?r)
                    )
                    :effect(
                        and
                           (rover_is_charged ?m ?r)
                           (not (there_a_mineral ?m ?from))
						   (not(rover_is_discharge ?r))
      		    )
	)  
	
      (:action mineral_discharge
       :parameters (?r - robot ?from - location ?m - mineral ?la - laboratory)
       :precondition
                    (and 
                        (mineral ?m)
						(location ?from)
						(rover ?r)
						(at ?from)
                        (there_a_lab ?la ?from)
                        (rover_is_charged ?m ?r)
                    )
                    :effect(
                        and
                           (there_a_mineral ?m ?from)
						   (rover_is_discharge ?r)
						   (not(rover_is_charged ?m ?r))
      		    )
	)  
	
)
