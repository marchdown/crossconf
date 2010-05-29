;;;; Pretty startup
(setq inhibit-startup-message t)
(defun emacs-reloaded ()
  (animate-string (concat 
		   ";;loaded in " (emacs-init-time) "\n"
		   ";;This is " (emacs-version) "\n"
;		   (substring (emacs-version) 0 16)
		   ";;You can do anything in Emacs. Anything at all.\n"
		   )
		  0 0)

;  (newline-and-indent)  (newline-and-indent)
)
(add-hook 'after-init-hook 'emacs-reloaded)
;(find-file "~/Dropbox/org/general.org")
;;;; 
(cond ((eq 'window-system 'ns) (load-file '"hmoo-ns.el"))
      ((eq 'window-system 'nil) (load-file '"hmoo-console.el"))
      ((eq 'window-system 'fubar) nil))
;;;;   Hmoo 
;;  load specific configuration files
; (let* ((default-directory crossconf-emacs-dir))
; (mapcar 'load-file '("hmoo-conf.el" "hmoo-color.el" "hmoo-keys.el")))
(mapcar 'load-file '(
		     "hmoo-conf.el"
		     "hmoo-color.el"
		     "hmoo-keys.el"
		     ))
(require 'frot) ;; my font rotation thingamabob. 

