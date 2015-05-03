#lang racket

; Problem 1
; Common Items

(define common-items
  (lambda (ls1 ls2)
    (cond ((null? ls2) '())
          ((contains? ls1 (car ls2)) (cons (car ls2) (common-items ls1 (cdr ls2))))
          (else (common-items (cdr ls1) ls2)))))
