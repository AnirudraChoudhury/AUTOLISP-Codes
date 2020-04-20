(
 defun c:retan (/ p1 p2 p3 p4)
 (setq p1 (getpoint "\nfirst corner of rectangle:"))
 (setq p3 (getpoint "\nSecond corner of rectangle:"))
 (setq p2 (list (car p1) (cadr p3)))
 (setq p4 (list (car p3) (cadr p1)))
 (Command "pline" p1 p2 p3 p4 "c")
 (princ)
 )