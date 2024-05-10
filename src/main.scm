(load "util.scm")

(define (mean lst)
  (/ (sum lst) (length lst)))

(define (median lst)
  (let ((sorted (sort lst <))
        (list-length (length lst)))
    (if (even? list-length)
        (mean (list (get-nth (floor (/ list-length 2)) sorted) (get-nth (- (floor(/ list-length 2)) 1) sorted)))
        (get-nth (floor (/ list-length 2)) sorted))))

;tests
(define lst '(1 2 3))

(newline)
(display (mean lst))

(newline)
(display (median lst))

(define lst2 '(4 6 7 1 3 4 6 7 23))
(newline)
(display "sorted: ")
(display (sort lst2 <))

(newline)
(display "median: ")
(display (median lst2))


(define lst3 '(4 6 7 1 3 4 4 6 7 23))

(newline)
(display "sorted: ")
(display (sort lst3 <))

(newline)
(display "median: ")
(display (median lst3))
