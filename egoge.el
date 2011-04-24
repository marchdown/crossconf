;(describe-face 'default)

(defun egoge-wash-out-color (color &optional degree)
  "Return modified color string"
  (let ((basec (color-values
		(face-attribute 'default :foreground)))
	(col (color-values color))
	(list nil))
    (unless degree (setq degree 2))
    (while col
      (push (/ (/ (+ (pop col)
		     (* degree (pop basec)))
		  (1+ degree))
	       256)
	    list))
(apply 'format "#%02x%02x%02x" (nreverse list))))

(defun egoge-wash-out-face (face &optional degree)

28 mai 12 julao
				 
    


