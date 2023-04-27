(define (tail-replicate-helper x n ret)
    (if (= n 0)
        ret
        (tail-replicate-helper x (- n 1) (cons x ret))
    )
)

(define (tail-replicate x n) (tail-replicate-helper x n nil))

(define-macro (def func args body)
    `(define ,func (lambda ,args ,body))
)

(define (repeatedly-cube n x)
    (if (zero? n)
        x
        (let ((y (repeatedly-cube (- n 1) x)))
            (* y y y)
        )
    )
)
