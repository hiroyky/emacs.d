;;;; packages.el

;; ここにインストールしたいパッケージを書きます．
;; Let's write here package list you want to install.
(defvar my-package-list
  '(
    yasnippet
    web-mode
    yatex
    auctex
    auto-complete
    python-mode
    csharp-mode
    js3-mode
    json-mode
    markdown-mode
    paredit
    ))

;; my-package-listをそれぞれインストールされていなければインストールする．
;; install each my-package-list if not installed.
(let ((not-installed (loop for x in my-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))


;; 読み込み設定
;; Configure for loading
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(autoload 'yahtml-mode "yahtml" "Yet Another HTML mode" t)
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)

;; 拡張子とモードの設定
;; Configuration for extension and mode
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
(add-to-list 'auto-mode-alist '("\\.cu$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))
(add-to-list 'auto-mode-alist '("\\.tex$" . yatex-mode))
(add-to-list 'auto-mode-alist '("\\.cls$" . yatex-mode))
(add-to-list 'auto-mode-alist '("\\.sty$" . yatex-mode))
(add-to-list 'auto-mode-alist '("\\.clo$" . yatex-mode))
(add-to-list 'auto-mode-alist '("\\.bbl$" . yatex-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.htm$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.shtml$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.shtm$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
