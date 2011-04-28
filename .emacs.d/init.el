;;;; Startup
;;;; Pretty startup
(setq inhibit-startup-message t)
(defun emacs-reloaded ()
  (animate-string (concat 
;		   ";;loaded in " (emacs-init-time) "\n"
		   ";;This is " (emacs-version) "\n"
;		   (substring (emacs-version) 0 16)
		   ";;You can do anything in Emacs. Anything at all.\n"
		   )
		  0 0)

;  (newline-and-indent)  (newline-and-indent)
)
(add-hook 'after-init-hook 'emacs-reloaded)

;(setq user-emacs-directory '"~/Dropbox/Emacs/")
;(add-to-list 'load-path "~/Dropbox/Emacs/")
;(add-to-list 'load-path user-emacs-directory)
;(setq default-directory "~/Dropbox/Emacs/")
(setq default-directory "~/.emacs.d/")
;;;; contents of typical subdirs.el, triplicated in each emacs installation
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
    (normal-top-level-add-subdirs-to-load-path))

(defun init ()
  (interactive)
  (find-file (concat default-directory "init.el")))
(setq org-directory "~/org/")
(setq sidelog (concat org-directory "sidelog.org"))
(defun sidelog ()
  (interactive)
  (find-file sidelog))

(if (eq window-system 'ns) (load-file "mac.el"))

;;;; Window management inside emacs
(global-set-key (kbd "C-9") 'shrink-window-horizontally)
(global-set-key (kbd "C-S-H") 'shrink-window-horizontally)
(global-set-key (kbd "C-0") 'enlarge-window-horizontally)
(global-set-key (kbd "C-3") 'enlarge-window-horizontally)

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
;;;; cyrillic Colemak
(global-set-key (kbd "C-о") 'next-line)
(global-set-key (kbd "C-к") 'previous-line)
(global-set-key (kbd "C-ф") 'move-beginning-of-line)
(global-set-key (kbd "C-л") 'move-end-of-line)
(global-set-key (kbd "M-у") 'forward-word)
(global-set-key (kbd "M-и") 'backward-word)

(global-set-key (kbd "C-е") 'keyboard-quit)
;;;; Cyrillic _and_ Cmd-as-meta
(global-set-key (kbd "M-о") 'make-frame-command)
;;;;;;;; Dired 
(defun dired-find-next-file-other-window ()
  (interactive)
  (next-line)
  (dired-display-file))
(defun dired-find-previous-file-other-window ()
  (interactive)
  (previous-line)
  (dired-display-file))

(add-hook 'dired-mode-hook
	  (lambda () 
	    (local-set-key (kbd "C-n") 'dired-find-next-file-other-window)
	    (local-set-key (kbd "C-p") 'dired-find-previous-file-other-window)
	  )
)
;;;;;;;; Org-mode setup
;;;; Keyboard Shortcuts
(global-set-key "\C-ca" 'org-agenda)
(global-set-key (kbd "<f12>") 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key (kbd "<f8>") 'org-cycle-agenda-files)
(global-set-key (kbd "<f11>") 'org-clock-goto)
(global-set-key (kbd "C-<f11>") 'org-clock-in)
(global-set-key (kbd "M-<f11>") 'org-resolve-clocks)

;;;;   Agenda setup
(setq org-agenda-files '("~/org/workflow.org"
			 "~/org/todo.org"
;			 "~/org/СБТ.org"
;			 "~/org/meta.org"
;			 "~/org/uni.org"
;			 "~/org/HomeImprovement.org"
			 ))
;;;;   Org-capture setup
;(setq org-default-notes-file "~/org/refile.org")
;(global-set-key (kbd "C-M-r") 'org-capture) ;C-M-r was backwards regexp search

;(setq org-capture-templates (quote (("t" "todo" entry (file "~/git/org/refile.org") "* TODO %?
;%U
;%a" :clock-in t :clock-resume t)
;                                    ("n" "note" entry (file "~/git/org/refile.org") "* %?                                                                            :NOTE:
;%U
;%a
;:CLOCK:
;:END:" :clock-in t :clock-resume t)
;                                    ("a" "appointment" entry (file+datetree "~/git/org/diary.org") "* %?
;%U" :clock-in t :clock-resume t)
;                                    ("p" "Phone call" entry (file "~/git/org/refile.org") "* Phone %(bh/phone-call) - %(gjg/bbdb-company) :PHONE:\n%U\n\n%?" :clock-in t :clock-resume t)
;                                    ("w" "org-protocol" entry (file "~/git/org/refile.org") "* TODO Review %c
;%U" :immediate-finish t :clock-in t :clock-resume t))))

(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(setq org-link-abbrev-alist
'(
  ( "сбт" . "http://xenoethics.org/sbt/%s")
  
))



;;;; miscellania
(setq inhibit-startup-message t)
(show-paren-mode 1)
(setq make-backup-files nil)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(icomplete-mode 1)
;;;; cmd-x cmd-c cmd-v

;;;; MIT Scheme
;;; Is it even installed?!
(setq scheme-program-name "stk")

;;;; python
;(add-to-list 'load-path "~/Dropbox/Emacs/libs-dealing-with-python")
(require 'python)
(setq python-indent 2)
(setq py-indent-offset 2)
;(load "ipython.el")
;(setq python-python-command "ipython")



;;  python-mode
 ;   (setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
;    (setq interpreter-mode-alist (cons '("python" . python-mode)
 ;                                      interpreter-mode-alist))
;    (autoload 'python-mode "python-mode" "Python editing mode." t)

;;; Haskell
;(require 'haskell-mode)
;(require 'inf-haskell)
;(load-file "haskell-site-file")
;(load-file "haskell-mode/haskell-site-file")
;(load-file "~/Dropbox/crossconf/emacs.d/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;;; the following three lines are exclusive
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)


(setq default-frame-alist '((width . 80) (height . 55)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;                         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;        Load Path        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;                         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; My functions
;x(add-to-list 'load-path "~/Dropbox/Emacs/vendor/emacs-jabber-0.8.0/")

;;;; adapted from http://stackoverflow.com/questions/221365/emacs-lisp-how-to-add-a-folder-and-all-its-first-level-sub-folders-to-the-load-p

;; (let ((base-dir "~/Dropbox/Emacs"))
;;    (add-to-list 'load-path base-dir)
;;    (dolist (f (directory-files base-dir))
;;      (let ((subdir (concat base-dir "/" f)))
;;        (when (and (file-directory-p subdir)
;;  		 (not (equal f ".."))
;;  		 (not (equal f ".")))
;;  	(add-to-list 'load-path subdir)))))


