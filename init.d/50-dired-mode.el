;;; 50-dired-mode.el ---                             -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Hirokazu Yokoyama
;;; Code:


(provide '50-dired-mode)
;;; 50-dired-mode.el ends here

;;
;; extend dired-mode(file explorer)
;;
(ffap-bindings)
(setq dired-listing-switches (purecopy "-Ahl"))
(setq dired-dwim-target t)
