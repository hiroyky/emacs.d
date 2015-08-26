;;; 00-basic.el
;; Copyright (C) 2015 Hirokazu Yokoyama

;;; プロファイル
;;; profile
;(setq user-full-name "YOUR FULL NAME")
;(setq user-login-name "YOUR LOGIN NAME")
;(setq user-mail-address "xxxx@mail.com")

;;; 文字エンコード
;;; character encoding

;; デフォルトの文字コード
;; default characters encoding
(prefer-coding-system 'utf-8)

;; Windowsの場合
;; In case Windows
(cond ((eq system-type 'windows-nt))
      (default-buffer-file-coding-system 'utf-8-with-signature)
      (modify-coding-system-alist 'file "\\.clj\\'" 'utf-8)
      (modify-coding-system-alist 'file "\\.exs?\\'" 'utf-8)
      (set-file-name-coding-system 'cp932)
      (set-keyboard-coding-system 'cp932)
      (set-terminal-coding-system 'cp932))


;;; backup files
(setq make-backupfiles nil)
(setq auto-save-default nil)

;;; 情報表示
;;; show information

;; 行列番号の表示
;; show line number and column number
(line-number-mode t)
(column-number-mode t)
;; ファイルサイズの表示
;; show file size
(size-indication-mode -1)

;;; 初期画面
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
