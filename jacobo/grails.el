(require 'grails-projectile-mode)

;; When entering grails-mode, consider also the snippets in the
;; snippet table "grails-mode"
(add-hook 'grails-projectile-mode-hook
          #'(lambda ()
              (yas-activate-extra-mode 'grails-mode)))

(defun grails-projectile-root ()
  "Returns grails root directory if this file is in a Grails project"
  (let ((grails-project-root (projectile-project-root)))
    (when (file-exists-p (expand-file-name "grails-app" grails-project-root))
      grails-project-root)))

(defun grails--ignore-buffer-p ()
  "Returns t if `grails-projectile-mode' should not be enabled for the current buffer"
  (string-match-p "\\*\\(Minibuf-[0-9]+\\|helm mini\\)\\*" (buffer-name)))

(defun grails-projectile-root-on ()
  "Enable `grails-projectile-mode' minor mode if this is a grails project."
  (ignore-errors ;; ignore errors at startup if not in project
    (when (and
	   (not (grails--ignore-buffer-p))
	   (grails-projectile-root))
      (grails-projectile-mode 1))))

(add-hook 'projectile-mode-hook 'grails-projectile-root-on)

(provide 'jacobo/grails)
