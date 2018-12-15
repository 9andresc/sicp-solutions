(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sq x) (* x x))

(define (good-enough? guess radicand)
  (< (abs (- (sq guess) radicand)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess radicand)
  (average guess (/ radicand guess)))

(define (sqrt-iter guess radicand)
  (new-if (good-enough? guess radicand)
    guess
    (sqrt-iter (improve guess radicand)
               radicand)))

;It returns an infinite loop.
;new-if is not a special form, therefore it always evaluates
;then-clause and else-clause regardless of the predicate value.