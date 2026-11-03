;;; init-completion.el --- minibuffer completion -*- lexical-binding: t; -*-

(setq enable-recursive-minibuffers t)

(use-package vertico
  :init (vertico-mode 1)
  :custom (vertico-cycle t))

(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package marginalia
  :init (marginalia-mode 1))

(use-package consult
  :bind (("C-x b"   . consult-buffer)
         ("C-x C-r" . consult-recent-file)
         ("C-c s"   . consult-ripgrep)
         ("C-c f"   . consult-find)
         ("C-c g"   . consult-git-grep)
         ("C-s"     . consult-line)
         ("M-y"     . consult-yank-pop)
         ("M-g g"   . consult-goto-line)
         ("M-g i"   . consult-imenu))
  :custom (consult-narrow-key "<"))

(provide 'init-completion)
