;; 40-auto-complete.el
;;; auto-completeの設定

(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.5.0/dict")
(ac-config-default)
(setq ac-auto-start 1)
(setq ac-dwim t)
(setq ac-use-menu-map t)
(add-to-list 'ac-sources 'ac-source-yasnippet)
