		
		
(defun File-read (puth)
(let ((in (open puth :if-does-not-exist nil)))
(when in
    (loop for line = (read-line in nil)
         while line do (format t "~a~%" line))
    (close in))))
	
	
