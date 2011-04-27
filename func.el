
;;;;;;;; Wrapper functions
(defun green-ansi-term ()
  "Show an existing buffer called \"*ansi-term*\" if one exists, otherwise
call function ansi-term interactively."
  (interactive)
  (let ((existing-buffer (get-buffer "*ansi-term*")))
    (if existing-buffer
        (switch-to-buffer existing-buffer)
      (call-interactively 'ansi-term))))

;; (setq sidelog-file '"~/Dropbox/org/sidelog.org")

;; (defun sidelog ()
;;   "Show an existing buffer called \"*sidelog*\" if one exists, otherwise open
;; file specified in sidelog-file and display it this buffer"
;;   (interactive)
;;   (let ((existing-buffer (get-buffer sidelog-file)))
;;     (progn (if existing-buffer
;; 	       (switch-to-buffer existing-buffer)

;; 	     (find-file sidelog-file)
;; ;set a timestamp
;; 	   )
;;     )))



(defun oh-hai ()
(interactive)
(org-agenda-list)
)

(defun embroid (v)
  (interactive "sRedefine which variable? ")
;  (insert (format ";\t%s was set to %s\n(setq %s '%s)" v (eval v) v (eval v))))
