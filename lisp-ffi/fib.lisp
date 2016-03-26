(load-shared-object "libfib.dylib")

(defun fib-ffi (n)
    (let ((fib-fn
            (extern-alien "fib" (function int int))))
        (alien-funcall fib-fn n)
    )
)

(let* ((arg
            (read-from-string
                (nth 1 *posix-argv*)))
       (answer
            (fib-ffi arg))
      )
    (print answer)
    (fresh-line)
)

