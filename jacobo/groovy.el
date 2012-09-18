(require 'groovy-mode)
(add-to-list 'auto-mode-alist '("\\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))
(add-to-list 'auto-mode-alist '("\\.gradle$" . groovy-mode))
;;(require 'groovy-eval)
(autoload 'groovy-eval "groovy-eval" "Groovy Evaluation" t)
(add-hook 'groovy-mode-hook 'groovy-eval)
;;; make Groovy mode electric by default (minor mode added to groovy mode)
(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
             (groovy-electric-mode)))
;;; make Groovy-electric minor mode play nice with yasnippets.
;;; Try to find a snippet first then call the indent function, in this case c-indent-line-or-region
(defun yas/advise-indent-function (function-symbol)
  (eval `(defadvice ,function-symbol (around yas/try-expand-first activate)
           ,(format
             "Try to expand a snippet before point, then call `%s' as usual"
             function-symbol)
           (let ((yas/fallback-behavior nil))
             (unless (and (interactive-p)
                          (yas/expand))
               ad-do-it)))))
;;; call the function with appropriate fallback behavior
(yas/advise-indent-function 'c-indent-line-or-region)

(provide 'jacobo/groovy)
