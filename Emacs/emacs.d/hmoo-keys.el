;;; kmacro
;(global-set-key "\C-\(" 'kmacro-start-macro)
;(global-set-key "\C-\)" 'kmacro-end-macro)

;(global-set-key "C-/" 'hippie-expand)
;;; Yegge's M-x without Meta.
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;; Too confusing for now.
;(global-set-key "\C-w" 'backward-kill-word)
;(global-set-key "\C-x\C-k" 'kill-region)
;(global-set-key "\C-c\C-k" 'kill-region)

; C-u C-x C-f to open file at point
(require 'dired-x)
 (setq dired-x-hands-off-my-keys nil)
 (dired-x-bind-find-file)

; make C-x b godly
(require 'iswitchb)
 (iswitchb-default-keybindings)

;;; NS keymap integration
;(global-set-key "\s-F" 'isearch-backward)
;(global-set-key "\s-~" 'ns-next-frame)

;; (defun google-region (beg end)
;;   "Google the selected region."
;;   (interactive "r")
;;   (browse-url (concat "http://www.google.com/search?ie=utf-8&oe=utf-8&q=" (buffer-substring beg end))))
;; (setq browse-url-browser-function 'browse-url-generic
;;       browse-url-generic-program "/Applications/Safari.app/Contents/MacOS/Safari")

;;; Al3x's mac customizations
(global-set-key (kbd "s-0") 'ansi-term)

; navigating through errors
(global-set-key [(meta n)] 'next-error)
(global-set-key [(meta p)] 'previous-error)
