(define (problem geralt)
(:domain geralt)
(:objects f_1_a f_1_b f_1_c f_2_a f_2_b f_2_c f_3_a f_3_b f_3_c)
(:init 

;poziom
(poziomo f_1_a f_1_b)
(poziomo f_1_b f_1_a)
(poziomo f_1_b f_1_c)
(poziomo f_1_c f_1_b)

(poziomo f_2_a f_2_b)
(poziomo f_2_b f_2_a)
(poziomo f_2_b f_2_c)
(poziomo f_2_c f_2_b)

(poziomo f_3_a f_3_b)
(poziomo f_3_b f_3_a)
(poziomo f_3_b f_3_c)
(poziomo f_3_c f_3_b)

;pion
(pionowo f_1_a f_2_a)
(pionowo f_2_a f_1_a)
(pionowo f_2_a f_3_a)
(pionowo f_3_a f_2_a)

(pionowo f_1_b f_2_b)
(pionowo f_2_b f_1_b)
(pionowo f_2_b f_3_b)
(pionowo f_3_b f_2_b)

(pionowo f_1_c f_2_c)
(pionowo f_2_c f_1_c)
(pionowo f_2_c f_3_c)
(pionowo f_3_c f_2_c)

;trakt
(trakt f_1_b)
(trakt f_2_b)
(trakt f_3_b)
(trakt f_1_c)

;geralt
(geralt f_1_c)

;wywerna
(wywerna f_2_b)
(wywerna f_3_b)

;pusty
(pusty f_1_a)
(pusty f_1_b)
(pusty f_1_c)
(pusty f_2_a)
(pusty f_2_c)
(pusty f_3_a)
(pusty f_3_c)
)

(:goal (and
    (pusty f_1_b)
    (pusty f_2_b)
    (pusty f_3_b)
    (pusty f_3_c)
    
))
)
