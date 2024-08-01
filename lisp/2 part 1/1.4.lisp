(defun compare-vectors (vec1 vec2)
  (cond ((and (= (length vec1) (length vec2))
              (every #'numberp vec1)
              (every #'numberp vec2))
          (reduce #'+ (mapcar (lambda (x) (if x 1 0)) (mapcar #'= vec1 vec2))))
        (t (error "Ошибка в параметрах"))))


(print (compare-vectors '(1 2 3) '(1 2 3)))