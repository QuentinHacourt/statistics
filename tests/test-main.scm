(load "src/main.scm")

(define (test-helper func input expected)
  (assert (= (func input) expected)))

(define (test-mean)
  (test-helper mean '(5) 5)
  (test-helper mean '(1 2 3) 2)
  (test-helper mean '(2 4 6 8) 5)
  (test-helper mean '(10 10 10 10 10) 10)
  (test-helper mean '(-1 -2 -3) -2)
  (test-helper mean '(1 -5 -10 2) -3))

(define (test-median)
  (test-helper mean '(5) 5)
  (test-helper mean '(1 2 3) 2)
  (test-helper mean '(2 4 6 8) 5)
  (test-helper mean '(10 10 10 10 20) 10)
  (test-helper mean '(-1 -2 -500) -2)
  (test-helper mean '(1 -5 -10 2) -2))

(define (run-tests)
  (test-mean))

(run-tests)
