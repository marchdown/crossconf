;;;; that file is loaded whenever emacs is run without window system

(unless window-system 
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1)))
