#lang sicp

;-------------------------------------------------------------------------------
; Exercise 1.4. Observe that our model of evaluation allows for combinations
; whose operators are compound expressions. Use this observation to describe
; the behavior of the following procedure:
;-------------------------------------------------------------------------------

(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

;The condition is evaluated first, more or less in this way:
;if b > 0 then returns the procedure "+"
;else returns the procedure "-"

;After the condition is evaluated the "+" or "-" procedure is called
;with parameters a and b.
