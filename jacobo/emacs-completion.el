(require 'yasnippet)
(require 'company)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"
	"~/.emacs.d/plugins/java-mode-plus/snippets"
	"~/.emacs.d/plugins/groovy-mode-plus/snippets"))

(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<backtab>") 'yas-expand)

(yas-global-mode 1)

(setq hippie-expand-try-functions-list
      '(yas-hippie-try-expand
	try-complete-file-name-partially
	try-expand-all-abbrevs
	try-expand-dabbrev
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol
	try-expand-list
	try-expand-line))

(global-set-key (kbd "TAB") 'hippie-expand)
;; to expand when in a snippet-mode
;; (global-set-key (kbd "M-/") 'hippie-expand)

(global-company-mode)
(global-set-key (kbd "M-/") 'company-complete)
(global-set-key (kbd "C-M-y") 'company-yasnippet)

(provide 'jacobo/emacs-completion)
