(add-to-list 'load-path (concat dotfiles-dir "plugins/anything-config"))
;; load these to get anything out of box setup
(require 'anything)
(require 'anything-config)
(require 'anything-match-plugin)

;; customize anything
;; (defun my-anything ()
;;        (interactive)
;;        (anything-other-buffer
;;         '(anything-c-source-buffers
;;           anything-c-source-file-name-history
;;           anything-c-source-info-pages
;;           anything-c-source-info-elisp
;;           anything-c-source-man-pages
;;           anything-c-source-locate
;;           anything-c-source-emacs-commands)
;;         "*my-anything*"))

(provide 'jacobo/anything-mode)
;; end of anything-mode.el