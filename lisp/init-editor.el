;;; init-editor.el --- basic editing -*- lexical-binding: t; -*-

(setq make-backup-files nil)
(setq-default indent-tabs-mode nil
              tab-width 4)

(use-package expand-region
  :bind ("C-=" . er/expand-region))

(use-package multiple-cursors
  :bind (("C->"     . mc/mark-next-like-this)
         ("C-<"     . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)))

(provide 'init-editor)
