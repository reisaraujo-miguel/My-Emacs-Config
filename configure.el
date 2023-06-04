;;; package --- Summary
;;; Commentary:
;;; Code:

(setq package-native-compile t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(add-to-list 'package-archives t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
	 ("nongnu" . "https://elpa.nongnu.org/nongnu/")
	 ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(typescript-mode treemacs-icons-dired treemacs-tab-bar doom-modeline yasnippet-snippets yasnippet-classic-snippets yapfify yaml-mode yaml ws-butler which-key vterm treemacs-projectile treemacs-magit treemacs-all-the-icons shrink-path pyvenv powerline paradox ov multiple-cursors modus-themes meow math-preview lsp-mode latex-math-preview highlight-indentation gdscript-mode frame-local format-all flycheck eproject elisp-lint elisp-format ein dashboard dash-functional company bui auctex all-the-icons-gnus all-the-icons-dired)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-refresh-contents)
(package-install-selected-packages)

(provide 'configure)
;;; configure.el ends here
