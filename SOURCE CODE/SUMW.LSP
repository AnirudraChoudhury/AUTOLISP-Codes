(defun c:sumw ()
(setq a (ssget '((0 . "text"))))
(setq n (sslength a))
(setq r 1)
(setq p1 (getpoint "\nLocation of total: "))
(setq k5 (getint "\nEnter dec. place: "))
(setq b (entget (ssname a 0)))
(setq c (cdr (assoc 1 b)))
(command "text" p1 "" "" c)
(repeat (- n 1)
(setq k (cdr (assoc 1 (entget (entlast)))))
(setq k1 (atof k))
(setq b1 (entget (ssname a r)))
(setq c1 (cdr (assoc 1 b1)))
(setq k2 (atof c1))
(setq k3 (+ k1 k2))
(setq k4 (rtos k3 2 k5))
(command "erase" "l" "")
(command "text" p1 "" "" k4 "") 
(setq r (1+ r))
)
)
