;-------------------------------------------------------------------------------
; Exercise 1.11: Exercise 1.11: A function f is defined by the rule that
; f (n) =
; n if n < 3
; f (n - 1) + 2f (n - 2) + 3f (n - 3) if n >= 3 
; Write a procedure that computes f by means of a recursive
; process. Write a procedure that computes f by means of an
; iterative process.
;-------------------------------------------------------------------------------

#lang scheme

; Recursive
(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

; Iterative
(define (f-iter n)
  (define (f-it i a b c)
    (define r (+ a (* 2 b) (* 3 c)))
    (cond
      ((< n 3) n)
      ((<= i n)(f-it (+ i 1) r a b))
      (else a)))
  (f-it 4 4 2 1))