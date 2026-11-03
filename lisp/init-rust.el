;;; init-rust.el --- Rust -*- lexical-binding: t; -*-

(setq treesit-language-source-alist
      '((rust "https://github.com/tree-sitter/tree-sitter-rust" "v0.23.2")))

(use-package rust-ts-mode
  :ensure nil
  :mode "\\.rs\\'"
  :hook (rust-ts-mode . eglot-ensure)
  :custom (treesit-font-lock-level 4))

(provide 'init-rust)
