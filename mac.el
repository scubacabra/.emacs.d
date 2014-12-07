;; using fish, grep and find do not work with the expected format of fish
(setq shell-file-name "/bin/sh")

;; change command to meta, ignore option key
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq ns-function-modifier 'hyper)

;; mac friendly font
(set-face-attribute 'default nil :font "Monaco-16")

;; get PATH from shell
(exec-path-from-shell-copy-env "JAVA_HOME")
(exec-path-from-shell-copy-env "GRAILS_HOME")
(exec-path-from-shell-copy-env "GROOVY_HOME")

;; ;; make sure path is correct when launched as application
;; (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
;; (push "/usr/local/bin" exec-path)

;; keybinding to toggle full screen mode
(global-set-key (quote [M-f10]) (quote ns-toggle-fullscreen))

;; Move to trash when deleting stuff
(setq delete-by-moving-to-trash t
      trash-directory "~/.Trash/emacs")

;; Ignore .DS_Store files with ido mode
;;(add-to-list 'ido-ignore-files "\\.DS_Store")

;; Don't open files from the workspace in a new frame
(setq ns-pop-up-frames nil)

;; Use aspell for spell checking: brew install aspell --lang=en
(setq ispell-program-name "/usr/local/bin/aspell")

(provide 'mac)
