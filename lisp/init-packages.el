;;; init-packages.el --- package.el & use-package -*- lexical-binding: t; -*-

(require 'package)
(setq package-archives
      '(("gnu"    . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa"  . "https://melpa.org/packages/")))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(require 'use-package)                 ; Emacs 29+ 内置
(setq use-package-always-ensure t)     ; 默认自动安装;内置包要写 :ensure nil

(provide 'init-packages)
