;;; init.el  emacs configuration file
;;; @author Hirokazu Yokoyama
;;; code:

(eval-when-compile (require 'cl))
(defvar root "~/.emacs.d")
(add-to-list 'load-path (concat root "/site-lisp"))
(add-to-list 'load-path (concat root "/init.d"))

;;
;; パッケージマネージャの設定
;; Configuration of package managers
;;

;; add elpa repositories
(require 'package)
(add-to-list 'package-archives '("melpa", "http://melpa.org.packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)


;; その他の設定はinit.d/以下で行います．
;; other settings is under the init.d/
(let* ((dir (concat root "/init.d"))
       (el-suffix "\\.el\\'")
       (files (mapcar
	       (lambda (path) (replace-regexp-in-string el-suffix "" path))
	       (directory-files dir t el-suffix))))
  (while files
    (load (car files))
    (setq files (cdr files))))
