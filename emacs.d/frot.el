(defun frot ()
(interactive)
(frot-rotate)
(set-frame-font (car frot-font-list))
;(set-default-font (car frot-font-list))
;; How the fuck do I print it out after running home?
;; (car frot-font-list)
)



(set 'frot-font-list '("Consolas" "Inconsolata" "Courier" "Menlo" "Monaco"))

;; this is not the font list you're looking for
;;(set 'frot-font-list '("Consolas" "Inconsolata" "Chicago" "Menlo" "Monaco" "Triskweline" "Code-R" "Fixedsys" "Helvetica"))


;;(defmacro hmoo-macrotate  )

(defun frot-rotate () (set 'frot-font-list (hmoo-rotate frot-font-list)))
(defun hmoo-rotate (l) (append (cdr l) (cons (car l) ())))


(provide 'frot)
(global-set-key [f6] 'frot)
;;;;scratch area
;; (frot-rotate)
;; frot-font-list
;; (hmoo-rotate frot-font-list)
;; (append (cdr frot-font-list) (cons (car frot-font-list) ()))

