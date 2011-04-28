;;;; Eye candy
(setq default-frame-alist '((tool-bar-lines . 0) (menu-bar-lines . 1) (width . 80) (height . 75)))

(invert-face 'default)
(menu-bar-mode -1)
;;;; Command is the new Meta.
(if (eq window-system 'ns)
    (progn
     (setq mac-option-modifier nil)
     (setq mac-command-modifier 'meta)
;     (global-set-key "\C-tab" 'completion-at-point)
     ))

;;;; If Command is Meta, then some Cmd- bindings should be remapped
(global-set-key (kbd "M-n") 'make-frame-command)
(global-unset-key (kbd "M-`"))
(global-set-key (kbd "M-`") 'other-frame)
		   

