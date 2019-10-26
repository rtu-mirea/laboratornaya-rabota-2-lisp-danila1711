(defun factorial (n)
( if (= n 0)
     1
     ( * n (factorial (- n 1)))))
	 
	 
	 
(loop for i from 0 to 16 
do (format t "~D! = ~D~%" i (factorial i)))


//Fibbonacchi

 (defun fibonacci (n)
    (if (< n 3)
        1
        (+ (fibonacci (- n 1)) (fibonacci (- n 2))) ))
FIBONACCI
0] (loop for i from 1 to 16
    do (format t "~D, " (fibonacci i))
    finally (format t "...~%"))
1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, ...
NIL
0]



0[4] (cdr ( nth 4  '(( 8 10) (  9 1 ) ( 2 8) ( 3 7) ( 6 4))))

(4)//Хвост 4го списка
0[4] (cdr ( nth 4  '(( 8 10) (  9 1 ) ( 2 8) ( 3 7) ( 6 4 5))))

(4 5)//Хвост 4го списка


0[4] (car ( nth 3  '(( 8 10) (  9 1 ) ( 2 8) ( 3 7) ( 6 4))))

3//голова 3го списка
0[4] (car ( nth 3  '(( 8 10) (  9 1 ) ( 2 8) (2 3 7) ( 6 4))))

2//голова 3го списка
0[4]  ( nth 5  '(( 8 10) (  9 1 ) ( 2 8) (2 3 7) ( 6 4)))

NIL//5 список
0[4]  ( nth 4  '(( 8 10) (  9 1 ) ( 2 8) (2 3 7) ( 6 4)))

(6 4)//4 список