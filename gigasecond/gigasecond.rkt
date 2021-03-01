#lang racket

(provide add-gigasecond)

(require racket/date)

(define (add-gigasecond dt)
  (seconds->date
   (+ (date->seconds dt) 1000000000)))
