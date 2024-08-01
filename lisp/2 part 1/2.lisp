(defun capital (country)
    (cond
        ((eq country 'Russia) 'Moscow)
        ((eq country 'USA) 'Washington)
        ((eq country 'France) 'Paris)
        (t 'Unknown)))

(print (capital 'Russia))