#lang sicp

;-------------------------------------------------------------------------------
; Exercise 1.3. Define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers.
;-------------------------------------------------------------------------------

(define (square n) (* n n))
(define (sum-squares a b) (+ (square a) (square b)))
(define (sum-larger-squares a b c)
  (cond ((and (<= a b) (<= a c)) (sum-squares b c))
        ((and (<= b a) (<= b c)) (sum-squares a c))
        (else (sum-squares a b))))

(display (sum-larger-squares 2 4 3)) (newline)
