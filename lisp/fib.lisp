(defun fib (n)
    (if (or (= n 0) (= n 1))
        1
        (+  (fib (- n 1))
            (fib (- n 2)))
    )
)

(let ((arg (read-from-string (nth 1 *posix-argv*))))
    (print (fib arg))
    (fresh-line)
)

