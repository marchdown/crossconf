(defun color-theme-random ()
  (interactive)
  (let* ((theme-number (number-to-string (random 999999999)))
         (buffer (url-retrieve-synchronously (concat "http://inspiration.sweyla.com/code/emacs/inspiration" theme-number ".el"))))
    (set-buffer buffer)
    (beginning-of-buffer)
    (replace-string (concat "inspiration-" theme-number) "color-theme-install-random")
    (delete-region (point-min) url-http-end-of-headers)
    (eval-buffer buffer)
    (write-file (concat "~/Dropbox/crossconf/emacs.d/crayons/" "inspiration" theme-number ".el" ))
    (color-theme-install-random)
    (setq *current-color-theme* theme-number)))
 ma
(global-set-key [f5] 'color-theme-random)