;;;; lifted from
;;;; http://emacs-fu.blogspot.com/2008/12/zooming-inout.html
(defmacro require-maybe (feature &optional file)
  "*Try to require FEATURE, but don't signal an error if `require' fails."
  `(require ,feature ,file 'noerror)) 

(defmacro when-available (func foo)
  "*Do something if FUNCTION is available."
  `(when (fboundp ,func) ,foo)) 
;;: Python
(setq python-indent 2)

;;; Haskell
(require 'haskell-mode)
(require 'inf-haskell)
;(load-file "haskell-site-file")
;(load-file "haskell-mode/haskell-site-file")
;(load-file "~/Dropbox/crossconf/emacs.d/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;;; the following three lines are exclusive
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)


;;; Org
(when (require-maybe 'org-install)
;(add-to-list 'load-path (expand-file-name "~/Dropbox/crossconf/org-mode/lisp"))
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
)
;;; Org Agenda
(setq org-agenda-files (list "~/Dropbox/org/general.org" "~/Dropbox/org/org-sandbox.org"))



;;; MIT Scheme
;;; Is it even installed?!
(setq scheme-program-name "stk")
;;;  No Icicles for me. What a pity.
;(require 'icicles)
;(setq icicle-key-complete-keys (kbd <C-M-S-tab>))

