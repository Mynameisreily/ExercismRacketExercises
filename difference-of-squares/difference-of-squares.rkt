#lang racket

(define (sum-of-squares x)
  (cond
    [(zero? (- x 1)) 1]
    [else (+ (expt x 2) (sum-of-squares (- x 1)))]))

(define (square-of-sum x)
  (expt (helper x) 2))

(define (helper x)
  (cond
    [(zero? x) 0]
    [else (+ x (helper (- x 1)))]))

(define (difference x)
  (- (square-of-sum x) (sum-of-squares x)))

(provide square-of-sum difference sum-of-squares )
