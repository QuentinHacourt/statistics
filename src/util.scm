(define (accumulate op null-value lst)
  (if (null? lst)
      null-value
      (op (car lst) (accumulate op null-value (cdr lst)))))

(define (sum lst)
  (accumulate + 0 lst))

(define (length lst)
  (sum (map (lambda (x) 1) lst)))

(define (sort lst cmp)
  (if (null? lst)
      '()
      (let ((pivot (car lst)))
        (append (sort (filter (lambda (x) (cmp x pivot)) (cdr lst)) cmp)
                (list pivot)
                (sort (filter (lambda (x) (not (cmp x pivot))) (cdr lst)) cmp)))))

(define (get-nth n lst)
  (if (= 0 n)
      (car lst)
      (get-nth (- n 1) (cdr lst))))


; tests
(define lst '(1 2 3 ))

(newline)
(display (sum lst))
(newline)
(display (length lst))

(define lst2 '(4 6 7 1 3 4 6 7 23))
(newline)
(display (sort lst2 <))

(newline)
(display (get-nth 5 lst2))
