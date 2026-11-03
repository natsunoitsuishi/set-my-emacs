;;; init.el --- entry point -*- lexical-binding: t; -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; 让 Custom 的自动生成内容不污染 init.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror 'nomessage)

(require 'init-packages)
(require 'init-ui)
(require 'init-editor)
(require 'init-keys)
(require 'init-completion)
(require 'init-prog)
(require 'init-c)
(require 'init-rust)
(require 'init-asm)

;; 启动完成后恢复正常 GC 阈值
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold (* 16 1024 1024))))
