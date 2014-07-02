;;;;;;;;
;; google cpplint
;;;;;;;;
(eval-after-load 'flycheck
  '(progn
     (require 'flycheck-google-cpplint)
     ;; Add Google C++ Style checker.
     ;; In default, syntax checked by Clang and Cppcheck.
     (flycheck-add-next-checker 'c/c++-clang
                                'c/c++-googlelint 'append)
  (custom-set-variables
   '(flycheck-c/c++-googlelint-executable "/usr/local/bin/cpplint")
   '(flycheck-googlelint-verbose "3")
   '(flycheck-googlelint-filter "-whitespace,+whitespace/braces"))))

(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(global-flycheck-mode)

(provide 'jacobo/flycheck)
