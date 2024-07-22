(defun calculate-and-print ()
  (let ((result (car ( cdr '((HEIGHT 72) (WEIGHT 175) (HAIR BLOND))))))
    (format t "Result: ~a~%" result)))

(calculate-and-print)
