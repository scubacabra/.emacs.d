(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

(set-face-background 'region "#464740")

;; Highlight current line
(global-hl-line-mode 1)

;; Customize background color of lighlighted line
(set-face-background 'hl-line "#222222")

;; Highlight in yasnippet TODO
(require 'yasnippet)
(set-face-background 'yas-field-highlight-face "#333399")

(set-face-foreground 'font-lock-warning-face "#ff6666")

;; org-mode colors
(setq org-todo-keyword-faces
      '(
        ("INPR" . (:foreground "yellow" :weight bold))
        ("DONE" . (:foreground "green" :weight bold))
        ("IMPEDED" . (:foreground "red" :weight bold))
        ))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; No menu bars
(menu-bar-mode -1)

;; Ditch them scrollbars
(scroll-bar-mode -1)

;; no tool bar
(tool-bar-mode 0)

(global-font-lock-mode 1)

;; like the line & col numbers in menu bar
(line-number-mode 1)
(column-number-mode 1)

;; nyan progress bar
(nyan-mode 1)

;; Make ediff default to in frame ediff not new frame
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(provide 'appearance)
