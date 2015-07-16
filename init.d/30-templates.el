;;; 30-templates.el
;;; Hirokazu Yokoyama

(require 'autoinsert)
(add-hook 'find-file-hook 'auto-insert)
(setq auto-insert-directory (concat root "/templates"))

(setq auto-insert-alist nil)
(add-to-list 'auto-insert-alist '("\\.java$" . ["class.java" template-insert-default]))
(add-to-list 'auto-insert-alist '("\\.html$" . ["default.html" template-insert-default]))
(add-to-list 'auto-insert-alist '("\\.htm$"  . ["default.html" template-insert-default]))
(add-to-list 'auto-insert-alist '("\\.tex$"  . ["default.tex" template-insert-default]))
(add-to-list 'auto-insert-alist '("\\.py$"   . ["default.py" template-insert-default]))
(add-to-list 'auto-insert-alist '("\\.cpp$"  . ["default.cpp" template-insert-default]))
(add-to-list 'auto-insert-alist '("\\.c$"    . ["default.c" template-insert-default]))
(add-to-list 'auto-insert-alist '("\\.h$"    . ["default.h" template-insert-default]))


(defvar template-replacements-alists
  '(
    ;; ファイル名などパス
    ("%file%" . (lambda () (file-name-nondirectory (buffer-file-name))))
    ("%class%" . (lambda () (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
    ("%extension%" . (lambda () (file-name-extension (buffer-file-name))))
    ("%full-file-name%" . (lambda () (identity buffer-file-name)))

    ;; ユーザー情報
    ("%full-name%" . (lambda () (identity user-full-name)))
    ("%mail%" . (lambda () (identity user-mail-address)))
    )
  )






(defun template-insert-default ()
  (time-stamp)
  (mapc #'(lambda(c)
            (progn
              (goto-char (point-min))
              (replace-string (car c) (funcall (cdr c)) nil)))
        template-replacements-alists)
  (goto-char (point-max))
  (message "done."))

(add-hook 'find-file-not-found-hooks 'auto-insert)
