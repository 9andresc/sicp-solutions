(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;This is a shorter way than writing the following procedure:
(define (a-plus-abs-b a b)
  ((if (> b 0) (+ a b) (- a b))))

;And it becomes even shorter when the procedure has more arguments
;than two or the arguments' names are larger.