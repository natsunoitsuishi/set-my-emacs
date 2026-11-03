;;; init-prog.el --- programming support -*- lexical-binding: t; -*-

(use-package exec-path-from-shell
  :if (or (daemonp) (memq window-system '(x pgtk ns)))
  :config (exec-path-from-shell-initialize))

(use-package company
  :hook (after-init . global-company-mode)
  :custom
  (company-minimum-prefix-length 2)
  (company-idle-delay 0)
  (company-show-numbers t)
  (company-tooltip-limit 20)
  (company-require-match nil)
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case t)
  (company-dabbrev-other-buffers 'all)
  (company-dabbrev-code-other-buffers 'all)
  (company-dabbrev-code-everywhere t))

(use-package eglot
  :ensure nil)

(setq treesit-extra-load-path
      (list (expand-file-name "tree-sitter" user-emacs-directory)))

(provide 'init-prog)
