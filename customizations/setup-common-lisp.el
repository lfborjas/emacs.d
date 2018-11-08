(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
