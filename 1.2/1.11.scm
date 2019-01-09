; Recursive process
(define (f-recursive n)
  (if (< n 3) n
              (+ (f-recursive (- n 1))
                 (* 2 (f-recursive (- n 2)))
                 (* 3 (f-recursive (- n 3))))))

; Iterative process
(define (f-iterative n)
  (define (iter a b c n)
    (if (= n 0) a
                (iter b c (+ c (* 2 b) (* 3 a)) (- n 1))))
  (iter 0 1 2 n))

; 0 1 2 0
; 0

; 0 1 2 1
; 1 2 4 0
; 1

; 0 1 2 2
; 1 2 4 1
; 2 4 11 0
; 2

; 0 1 2 3
; 1 2 4 2
; 2 4 11 1
; 4 11 25 0
; 4