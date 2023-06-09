(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (sign val) (cond ( (> val 0) 1 )
                         ( (= val 0) 0 )
                         ( else -1 )))

(define (square x) (* x x))

(define (pow base exp) (cond ( (= base 1) 1 )
                             ( (= base 0) 0 )
                             ( (= exp 1) base )
                             ( (= exp 2) (square base) )
                             ( (even? exp) (square (pow base (/ exp 2))) )
                             ( else (* base (square (pow base (/ (- exp 1) 2)))) )
                        )
)
