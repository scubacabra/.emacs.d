(require 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook 'subword-mode)

(provide 'jacobo/scala)
