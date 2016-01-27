;; markdown-mode
;; ref: http://blog.shinofara.xyz/archives/354/

;; ファイルパスを渡す
(defun markdown-custom ()
  "markdown-mode-hook"
  (setq markdown-command-needs-filename t)
  )
(add-hook 'markdown-mode-hook '(lambda() (markdown-custom)))
