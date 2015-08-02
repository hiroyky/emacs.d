;;; 10-faces.el ---                                  -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Hirokazu Yokoyama
;;; Code:


(cond ((window-system)
       (add-to-list 'default-frame-alist '(foreground-color . "#DCDCCC"))
       (add-to-list 'default-frame-alist '(background-color . "#3F3F3F"))
       (add-to-list 'default-frame-alist '(alpha . 85))


       (cond ((equal system-type 'windows-nt)
              (custom-set-faces '(default ((t :family "consolas"))))
              (set-fontset-font (frame-parameter nil 'font) 'japanese-jisx0208
                                (font-spec
                                 :family "Meiryo"
                                 :size 12))))

       (cond ((equal system-type 'darwin)
              (custom-set-faces '(default ((t :family "Monaco"))))
              (set-fontset-font (frame-parameter nil 'font) 'japanese-jisx0208
                                (font-spec
                                 :family "Hiragino Maru Gothic ProN"
                                 :size 12))
              (set-frame-parameter nil 'alpha 85)))


       (cond ((equal system-type 'gnu/linux)
              (custom-set-faces '(default ((t :family "Droid Sans mono"))))
              (set-fontset-font (frame-parameter nil 'font) 'japanese-jisx0208
                                (font-spec
                                 :family "TakaoEXGothic"
                                 :size 12))
              (set-frame-parameter nil 'alpha 85)))))


(provide '10-faces)
;;; 10-faces.el ends here
