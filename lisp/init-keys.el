;;; init-keys.el --- custom commands & bindings -*- lexical-binding: t; -*-

(setq compile-command ""
      compilation-ask-about-save nil)

(defun my/compile-interactive ()
  "总是弹出编译命令提示,等价于 C-u M-x compile。"
  (interactive)
  (let ((current-prefix-arg '(4)))
    (call-interactively #'compile)))

(defun my/save-and-kill-buffer ()
  "保存并关闭当前 buffer。"
  (interactive)
  (save-buffer)
  (kill-buffer (current-buffer)))

(keymap-global-set "C-;" #'my/compile-interactive)
(keymap-global-set "C-'" #'my/save-and-kill-buffer)

(provide 'init-keys)
