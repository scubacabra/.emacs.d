;; open files with this extension in org-mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; key bindings
(global-set-key (kbd "C-c C-o l") 'org-store-link)
(global-set-key (kbd "C-c C-o c") 'org-capture)
(global-set-key (kbd "C-c C-c a") 'org-agenda)
(global-set-key (kbd "C-c C-o b") 'org-iswitchb)

(setq org-log-done t)
;; hopefully this stuff works. like the idea of images in this
(add-hook 'org-mode-hook
	  (lambda ()
	    (local-set-key "\M-n" 'outline-next-visible-heading)
            (local-set-key "\M-p" 'outline-previous-visible-heading)
	    ;; display images
            (local-set-key "\M-I" 'org-toggle-iimage-in-org)
            ;; fix tab
            (local-set-key "\C-y" 'yank)))

;;; stuff for iimage in org
(require 'iimage)
(add-to-list 'iimage-mode-image-regex-alist
             (cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex
                           "\\)\\]")  1))

(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
      (set-face-underline-p 'org-link t))
  (iimage-mode))

(provide 'jacobo/org-mode)
