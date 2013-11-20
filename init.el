;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;
;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"

;; setup path to .emacs.d
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; setup path to dependencies
(setq jacobo (expand-file-name "jacobo" dotfiles-dir))
(setq plugins (expand-file-name "plugins" dotfiles-dir))
(setq defuns-dir (expand-file-name "defuns" dotfiles-dir))

;; set up load path
(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path jacobo)
(add-to-list 'load-path plugins)
(let ((default-directory plugins))
  (normal-top-level-add-subdirs-to-load-path))

;; add external projects to load-path TODO
;; (dolist (project (directory-files plugins t "\\w+"))
;;   (when (file-directory-p project)
;;     (add-to-list 'load-path project)))

;; add defuns in external library in
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

;; write backup files to own directory
(setq backup-directory-alist `(("." . , (expand-file-name 
					"backups" dotfiles-dir))))
;; write autosave to their own dir also
(setq auto-save-file-name-transforms `((".*" ,
					(expand-file-name "autosaves" dotfiles-dir))))

;; is this on a mac??
(setq is-mac (equal system-type 'darwin))
(when is-mac (require 'mac))

;; load custom modes I like
(require 'load-custom-modes)

;; set-up keybindings
(require 'key-bindings)

;; set-up appearance
(add-to-list 'custom-theme-load-path (concat dotfiles-dir "themes/"))
(load-theme 'zenburn t)
(require 'appearance)

;; load up my cust file to load up everything else
(require 'jacobo)

(provide 'init)
;; init.el ends here
