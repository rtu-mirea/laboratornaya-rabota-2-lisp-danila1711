


(defun insert-at (number lis value)
  (if (= number 0) (cons value lis)
      (cons (car lis) (insert-at (1- number) (cdr lis) value))))
	  

// ( insert-at 3 '(3 5 7 3 8 9) 99)
(3 5 7 99 3 8 9)


//(del-by-num 3 '(q e t s h u d))
(Q E T H U D)
		
		
		
(defun all-positions (needle haystack)
  (loop
    for element in haystack
    and position from 0
     when (eql element needle)
      collect position))

// (all-positions 1 '(1 3 1 3 4 6 1))
(0 2 6)