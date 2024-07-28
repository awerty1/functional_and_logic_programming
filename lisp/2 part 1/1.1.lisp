(defun scalar-product (vec1 vec2)
  (cond ((and (= (length vec1) (length vec2))
              (every #'numberp vec1)
              (every #'numberp vec2))
         (reduce #'+ (mapcar #'* vec1 vec2)))
        (t (error "Ошибка в параметрах"))))

(print (scalar-product '(1 2 3) '(4 5 6)))