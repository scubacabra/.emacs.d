;; open files with this extension in org-mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; key bindings
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c M-c") 'org-capture)
(global-set-key (kbd "C-c C-a") 'org-agenda)
(global-set-key (kbd "C-c M-b") 'org-iswitchb)

(setq org-log-done t)

(setq org-agenda-files (list "~/.emacs.d/todo.org"))

(require 'org-bullets)
(setq org-bullets-bullet-list
  '(;;; Large
    "◉"
    "○"
    "○"
    "◆"
    "◇"
    ;; ♥ ● ◇ ✚ ✜ ☯ ◆ ♠ ♣ ♦ ☢ ☆❀ ◆ ◖ ▶ ★ ✽
;;; Small
    ;; ► • ★ ▸
    ))

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(provide 'jacobo/org-mode)
