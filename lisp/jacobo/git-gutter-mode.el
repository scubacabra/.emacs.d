(require 'git-gutter)

(global-git-gutter-mode 1)

;; If you would like to use git-gutter.el and linum-mode
;; (git-gutter:linum-setup)

(global-set-key (kbd "C-x C-g") 'git-gutter:toggle)
(global-set-key (kbd "C-x v =") 'git-gutter:popup-hunk)

;; Jump to next/previous hunk
(global-set-key (kbd "C-x p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x n") 'git-gutter:next-hunk)

;; Stage current hunk
(global-set-key (kbd "C-x v s") 'git-gutter:stage-hunk)

;; Revert current hunk
(global-set-key (kbd "C-x v r") 'git-gutter:revert-hunk)

;; set start version
(global-set-key (kbd "C-x v v") 'git-gutter:set-start-revision)

(provide 'jacobo/git-gutter-mode)
