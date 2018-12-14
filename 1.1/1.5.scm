(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

;Behaviour with applicative-order evaluation: the arguments will be
;evaluated first, then procedure will be applied to them. Therefore
;procedure (p) in (test 0 (p)) will be called immediately.
;It returns an infinite loop.

;Behaviour with normal-order evaluation: evaluation of arguments
;will be postoned until they are needed. The arguments of test will
;be passed unevaluated to the procedure body. It returns 0 because
;of the predicate (= 0 0) and (p) never gets evaluated.
