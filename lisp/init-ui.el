;;; init-ui.el --- appearance -*- lexical-binding: t; -*-

(column-number-mode 1)
(show-paren-mode 1)
(setq default-frame-alist '((width . 150) (height . 40)))
(setq resize-mini-windows t)

(defun my/set-font (&optional frame)
  "为 FRAME 设置字体。"
  (with-selected-frame (or frame (selected-frame))
    (when (and (display-graphic-p)
               (find-font (font-spec :family "Iosevka")))
      (set-face-attribute 'default nil
                          :family "Iosevka"
                          :height 120))))
(if (daemonp)
    (add-hook 'after-make-frame-functions #'my/set-font)
  (my/set-font))

(use-package emacs
  :ensure nil
  :custom (display-line-numbers-type 'relative)
  :config (global-display-line-numbers-mode 1))

(use-package gruber-darker-ayu-theme
  :config (load-theme 'gruber-darker-ayu t))

(provide 'init-ui)
