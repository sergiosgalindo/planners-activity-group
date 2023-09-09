(define (domain robot-rover)
      (:requirements :adl :typing)
      (:types mineral rover field lab - object)
      
      (:predicates
                  (at ?x - object ?y - field)
                  (empty ?x - field)
                  (robot ?x - rover)
                  (there_is_a_lab ?x - lab)
                  (there_is_a_mineral ?x - mineral)
                  (mineral_charged ?x - mineral ?y - rover)
                  (valid_move ?x - field ?y - field) 
                  (visited ?x - field)        
      )
      
      (:action move
       :parameters (?from - field ?to - field ?robotrover - rover)
       :precondition
                    (and
                        (robot ?robotrover)
                        (at ?robotrover ?from)
                        (visited ?from)
                        (valid_move ?from ?to)
                    )
                    :effect(
                        and
                            (not (at ?robotrover ?from))
                            (visited ?to)
                            (at ?robotrover ?to)
                            (not (valid_move ?from ?to))
                        
                    )
      )
      
      (:action valid-is-empty
       :parameters (?robotrover - rover ?from - field ?thing - object)
       :precondition
                    (and
                        (empty ?from)
                        (not (and (there_is_a_mineral ?thing) (there_is_a_lab ?thing)))
                    )
                    :effect(
                        and
                            (not (empty ?from))
                        
                    )
      )
      
      (:action rover-charged
       :parameters (?robotrover - rover ?rock - mineral ?from - field)
       :precondition
                    (and 
                        (robot ?robotrover)
                        (at ?robotrover ?from)
                        (not (empty ?from))
                        (there_is_a_mineral ?rock)
                    )
                    :effect(
                        and
                            (mineral_charged ?rock ?robotrover)
                            (not (there_is_a_mineral ?rock))
                            (empty ?from)
                        
                    )
      )

      (:action rover-discharge
       :parameters (?robotrover - rover ?rock - mineral ?from - field ?laboratory - lab)
       :precondition
                    (and 
                        (robot ?robotrover)
                        (at ?robotrover ?from)
                        (mineral_charged ?rock ?robotrover)
                        (there_is_a_lab ?laboratory)
                    )
                    :effect(
                        and
                            (not (mineral_charged ?rock ?robotrover))
                        
                    )
      )

)
