(require 'auto-complete)

(require 'auto-complete-config)
(ac-config-default)

;;;;;;;;
;; auto complete c headers and hooks
;;;;;;;;
(defun jacobo/auto-complete-c-headers ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories
	       '"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/5.1/include"))

(add-hook 'c++-mode-hook 'jacobo/auto-complete-c-headers)
(add-hook 'c-mode-hook 'jacobo/auto-complete-c-headers)


(provide 'jacobo/auto-complete)
