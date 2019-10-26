	
	
(defun deep-decompress (lst)
(if (zerop (car lst)) nil
(cons (second lst) (deep-decompress (list (1- (car lst)) (second lst))))))




 (defun decompress (lst)
(cond ((null lst) nil)
((atom (car lst)) (cons (car lst) (decompress (cdr lst))))
((consp (car lst)) (append (deep-decompress (car lst)) (decompress (cdr lst)))
)))




 (defun comp-list (val acc)
(if (> acc 1) (list acc val) val))



(defun accum (val acc lst)
(cond ((null lst) (cons (comp-list val acc) nil))
((eq val (car lst)) (accum val (1+ acc) (cdr lst)))
(t (cons (comp-list val acc) (accum (car lst) 1 (cdr lst))))))


(defun compress (l1)
(cond ((null (cdr l1)) '())
(t (accum (car l1) 1 (cdr l1)))))



