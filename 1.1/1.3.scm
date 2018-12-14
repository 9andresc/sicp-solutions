(define (square x) (* x x))

(define (sum-squares x y) (+ (square x) (square y)))

(define (sum-squares-larger-two-numbers a b c)
  (cond ((and (< a b) (< a c)) (sum-squares b c))
        (else (sum-squares-larger-two-numbers b c a))))

(sum-squares-larger-two-numbers 1 2 3)
;=> 13