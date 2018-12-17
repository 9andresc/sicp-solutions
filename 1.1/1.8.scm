(define (sq x) (* x x))

(define (average x y z)
  (/ (+ x y z) 3))

(define (improve guess radicand)
  (average (/ radicand (sq guess)) guess guess))

(define (good-enough? guess prev-guess)
  (< (abs (- guess prev-guess)) (abs (* guess 0.001))))

(define (cbrt-iter guess prev-guess radicand)
  (if (good-enough? guess prev-guess)
    guess
    (cbrt-iter
      (improve guess radicand)
      guess
      radicand)))

(define (cbrt radicand)
  ((if (< x 0) - +)(cbrt-iter
                     (improve 1.0 (abs radicand))
                     1
                     (abs radicand))))