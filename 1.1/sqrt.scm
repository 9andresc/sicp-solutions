(define (sq x) (* x x))

(define (good-enough? guess radicand)
  (< (abs (- (sq guess) radicand)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess radicand)
  (average guess (/ radicand guess)))

(define (sqrt-iter guess radicand)
  (if (good-enough? guess radicand)
    guess
    (sqrt-iter (improve guess radicand) radicand)))

(define (sqrt radicand)
  (sqrt-iter 1.0 radicand))