;;; init-c.el --- C/C++ -*- lexical-binding: t; -*-

(use-package cc-mode
  :ensure nil
  :config
  (c-add-style "my-k&r" '("k&r" (c-basic-offset . 4)))
  (setq c-default-style '((other . "my-k&r"))))

(provide 'init-c)
