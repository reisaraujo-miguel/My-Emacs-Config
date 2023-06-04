;;; package --- Summary
;;; Commentary:
;;; Code:

;; faster strartup
(setq package-quickstart t)

;; appearence
(setq inhibit-startup-screen t)
(setq menu-bar-mode nil)
(setq tool-bar-mode nil)
(set-scroll-bar-mode nil)
(add-to-list 'default-frame-alist '(height . 39))
(add-to-list 'default-frame-alist '(width . 85))

(provide 'early-init)
;;; early-init.el ends here
