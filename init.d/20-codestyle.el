;;; 20-codestyle.el
;; Copyright (C) 2015 Hirokazu Yokoyama

;;; タブ設定
;;; tab configuration
(setq-default tab-width 4 indent-tabs-mode nil)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                      64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

;;; 空白文字の表示
;;; White space view
(require 'whitespace)
;; ここに表示対象にする文字種を設定する
(setq whitespace-style '(fase
                         ;trailing     ; 行末
                         tabs          ; タブ
                         ;empty        ; 先頭・末尾の空白
                         space-mark
                         tab-mark
                         ))
;; どのように置換するかを設定する．正規表現が伝える.\nをNと表示するなど
(setq whitespace-display-mappings
      '((space-mark ?\x3000 [?\□])
        (tab-mark   ?\t   [?\xBB ?\t])
        ))
(global-whitespace-mode 1)
(set-face-foreground 'whitespace-space "LightSlateGray")
;(set-face-background 'whitespace-space "DarkSlateGray")
(set-face-foreground 'whitespace-tab "LightSlateGray")
;(set-face-background 'whitespace-tab "DarkSlateGray")

;; 行末の空白を削除
;; remove end of line spaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)
