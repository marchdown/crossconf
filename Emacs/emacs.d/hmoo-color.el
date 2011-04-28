(if (null 'window-system) 
    ((require 'color-theme) (color-theme-tty-dark)) 
;;; Woo! zenburnt!
  (require 'zenburn) (zenburn)
;;; pretty lambdas
  (require 'lambda-mode) (lambda-mode)
  
)
;;; color-theme init
;(load-file "color-theme.el")
;(require 'color-theme)
;(require 'color-theme-less)
;(color-theme-less)
;(color-theme-calm-forest)
;(color-theme-euphoria)


;;; color-theme mode hooks
;;(add-hook 'slime-connected-hook 'color-theme-lawrence)
;;(add-hook 'c-mode-hook 'color-theme-arjen)
;;(add-hook 'haskell-mode-hook 'color-theme-charcoal-black)
;;(add-hook 'latex-mode-hook 'color-theme-cooper-dark)

;(setq list-o-themes '(color-theme-less color-theme-euphoria color-theme-hacker))
;(defun flip-color-theme (list-o-themes) ((car list-o-themes)))
;(setq list-o-themes (cons (cdr list-o-themes) (car list-o-themes)))

;(flip-color-theme list-o-themes)
;((car list-o-themes)))
