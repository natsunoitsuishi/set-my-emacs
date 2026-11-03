;;; init-ui.el --- appearance -*- lexical-binding: t; -*-

(column-number-mode 1)
(show-paren-mode 1)
(setq default-frame-alist '((width . 150) (height . 40)))
(setq resize-mini-windows t)

(use-package emacs
  :ensure nil
  :custom (display-line-numbers-type 'relative)
  :config (global-display-line-numbers-mode 1))

(use-package gruber-darker-ayu-theme
  :config (load-theme 'gruber-darker-ayu t))

(provide 'init-ui)
