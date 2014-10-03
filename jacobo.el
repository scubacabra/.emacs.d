(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; pallet for cask management
(require 'pallet)

;; dired-async
(when (require 'dired-aux)
   (require 'dired-async))

;; helm mode
(require 'jacobo/helm-mode)

;;ibuffer setup
(require 'jacobo/ibuffer-setup)

;; org stuff
(require 'jacobo/org-mode)

;; Yasnippets stuff
(require 'jacobo/yasnippet)

;; expand-region
(require 'jacobo/expand-region)

;; smart-forward
(require 'jacobo/smart-forward)

;; groovy mode
(require 'jacobo/groovy)

;; grails-projectile-mode
(require 'jacobo/grails)

;; java-mode plus
(require 'jacobo/java-mode)

;; configure extras on magit
(require 'jacobo/magit)

;; ace-jump mode
(require 'jacobo/ace-jump-mode)

;; ace-window mode
(require 'jacobo/ace-window-mode)

;; multiple cursors
(require 'jacobo/multiple-cursors)

;; iy-go-to-char
(require 'jacobo/iy-go-to-char-mode)

;; browse kill ring
(require 'jacobo/browse-kill-ring)

;; feature-mode
(require 'jacobo/feature-mode)

;; markdown mode
(require 'jacobo/markdown-mode)

;; zoom-frm
(require 'jacobo/zoom-frm)

;; ;; spock-mode --- need submodule I think
;; (require 'spock-mode)

;; gradle-mode -- need submodule I think
(require 'jacobo/gradle-mode)

;; nxml mode configuration
(require 'jacobo/xml-setup)

;; stripe-buffer prettify lists
(require 'jacobo/stripe-buffer-setup)

;; dired-details
(require 'jacobo/dired-setup)

;; mark for deletion no content
;; ;; gist
;; (require 'jacobo/gist)

;; javadoc setup
(require 'jacobo/javadoc)

;; smart tabs setup
(require 'jacobo/setup-smart-tabs)

;; auto-complete setup
(require 'jacobo/auto-complete)

;; projectile-mode
(require 'jacobo/projectile-mode)

;; flycheck mode setup
(require 'jacobo/flycheck)

;; web-mode
(require 'jacobo/web-mode)

;; git-gutter mode
(require 'jacobo/git-gutter-mode)

;; zygospore
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)

(provide 'jacobo)
;; end of jacobo.el
