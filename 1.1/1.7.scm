;The absolute tolerance of 0.001 is significantly large when
;computing the square root of a small value. For example,
;(sqrt 0.0001) yields 0.03230844833048122 instead of the expected
;0.01 (an error of over 200%)

;On the other hand, for very large values of the radicand, the
;machine precision is unable to represent small differences between
;large numbers. The algorithm might never terminate because the
;square of the best guess will not be within 0.001 of the radicand
;and trying to improve it will keep on yielding the same guess.
;For example, try (sqrt 1000000000000) [that's with 12 zeroes], then
;try (sqrt 10000000000000) [13 zeroes]. The 12 zeroes yields an
;answer almost immediately whereas the 13 zeroes enters an endless
;loop.

;If good-enough? uses the alternative strategy (a relative tolerance
;of 0.001 times the difference between one guess and the next), sqrt
;works better both for small and large numbers.

(define (sq x) (* x x))

(define (good-enough? guess oldguess)
  (< (abs (- guess oldguess))
     (* guess 0.001)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess radicand)
  (average guess (/ radicand guess)))

(define (sqrt-iter guess oldguess radicand)
  (if (good-enough? guess oldguess)
      guess
      (sqrt-iter (improve guess radicand) guess radicand)))

(define (sqrt radicand)
  (sqrt-iter 1.0 2.0 radicand))