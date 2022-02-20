(print "Enter a list: ")
(setq arr (read))

(print "The list is: ")
(format t "~a ~%" arr)

(print "Enter index you want to search: ")
(setf index (read))

(format t "~d ~%" index)

;;; normally 
(print "The element is - ")
(print (nth index  arr))

;;; using car and cdr 
(print "The element is (using car) - ")
(print (car (nthcdr index arr)))
