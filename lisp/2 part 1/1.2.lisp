(defun multiply-vector-by-scalar (vector scalar)
  (cond ((every #'numberp vector)
         (mapcar #'(lambda (x) (* x scalar)) vector))
        (t (error "Ошибка в параметрах"))))

(print (multiply-vector-by-scalar '(1 2 3) 4))