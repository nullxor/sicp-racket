;-------------------------------------------------------------------------------
; Exercise 1.8: Newton’s method for cube roots is based on
; the fact that if y is an approximation to the cube root of x,
; then a better approximation is given by the value (x / y^2 + 2y) / 3
; Use this formula to implement a cube-root procedure analogous to
; the square-root  procedure
;-------------------------------------------------------------------------------

#lang scheme
(define approx-delta 0.000001)
(define (cube-root num)
  (cube-root-helper num (/ num 2.0)))
(define (cube-root-helper cbrt guess)
  (define denominator (+ (/ cbrt (* guess guess)) (* 2 guess)))
  (define approx (/ denominator 3))
  (if (good-enough? guess approx) approx (cube-root-helper cbrt approx)))
(define (good-enough? guess approx)
  (< (abs (- guess approx)) approx-delta))
