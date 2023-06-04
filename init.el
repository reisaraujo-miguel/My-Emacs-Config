;;; package --- Summary
;;; Commentary:
;;; Code:

;;packages
(require 'package)
(require 'ispell)
(require 'dashboard)
(require 'cc-mode)
(require 'treemacs-all-the-icons)
(require 'lsp)
(require 'modus-themes)
(require 'gdscript-mode)
(require 'multiple-cursors)
(require 'sgml-mode)

(load-theme 'modus-vivendi-tinted :no-confim)

(setq warning-minimum-level :emergency)

;;variables
(defvar c-syntactic-element)
(setq package-native-compile t)

(dashboard-setup-startup-hook)
(treemacs-load-theme "all-the-icons")

;;prog-mode hooks
(add-hook 'prog-mode-hook #'electric-pair-mode)
(add-hook 'prog-mode-hook #'show-paren-mode)
(add-hook 'prog-mode-hook #'flycheck-mode)
(add-hook 'prog-mode-hook #'company-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)
(add-hook 'prog-mode-hook #'yas-minor-mode)
(add-hook 'text-mode-hook #'ws-butler-mode)

;;LSP hooks
(add-hook 'java-mode-hook #'lsp-deferred)
(add-hook 'python-mode-hook #'lsp-deferred)
(add-hook 'c-mode-hook #'lsp-deferred)
(add-hook 'c++-mode-hook #'lsp-deferred)
(add-hook 'css-mode-hook #'lsp-deferred)
(add-hook 'js-mode-hook #'lsp-deferred)
(add-hook 'typescript-mode-hook #'lsp-deferred)
(add-hook 'gdscript-mode-hook #'lsp-deferred)
(add-hook 'html-mode-hook #'lsp-deferred)

;;lsp
(global-set-key (kbd "C-c C-d") 'lsp-describe-thing-at-point)
(global-set-key (kbd "C-c C-r") 'lsp-rename)
(global-set-key (kbd "C-c C-a") 'lsp-execute-code-action)

;;dired-mode hooks
(add-hook 'dired-mode-hook #'all-the-icons-dired-mode)

;;multiple cursors configuration
(define-key mc/keymap (kbd "<return>") nil)
(global-set-key (kbd "C-c C-SPC") 'set-rectangular-region-anchor)
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this-word)
(global-set-key (kbd "C-c C-p") 'mc/mark-previous-like-this-word)
(global-set-key (kbd "C-c M-n") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-c M-p") 'mc/unmark-previous-like-this)
(global-set-key (kbd "C-c C-s n") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-c C-s p") 'mc/skip-to-previous-like-this)

;;treemacs
(global-set-key (kbd "M-n") 'treemacs)

;;vars
(global-set-key (kbd "\C-c C-c") 'compile)
(global-set-key (kbd "\C-c t") 'open-terminal-below)
(global-set-key (kbd "\C-c C-i") 'my-open-init-file)
(global-set-key (kbd "\C-c f") 'format-code)

(which-key-mode t)

;;latex configuration
;; (with-eval-after-load "ispell"
;;   (ispell-set-spellchecker-params)
;;   (ispell-hunspell-add-multi-dic "pt_BR,en_US"))

(add-hook 'LaTeX-mode-hook #'flyspell-mode)
;;(add-hook 'text-mode-hook #'auto-fill-mode)
;;(add-hook 'text-mode-hook #'visual-line-mode)
(add-hook 'LaTeX-mode-hook #'company-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(add-to-list 'package-archives t)
 '(auto-save-file-name-transforms '((".*" "/tmp/" t)))
 '(backup-directory-alist '((".*" . "/tmp/")))
 '(c-default-style "leug")
 '(css-indent-offset 2)
 '(dashboard-center-content t)
 '(display-line-numbers-width 3)
 '(doom-modeline-mode t)
 '(fill-column 80)
 '(gc-cons-threshold 100000000)
 '(gdscript-gdformat-line-length 80)
 '(gdscript-gdformat-save-and-format t)
 '(global-hl-line-mode t)
 '(global-tab-line-mode t)
 '(indent-tabs-mode t)
 '(ispell-program-name "hunspell")
 '(lsp-idle-delay 0.5)
 '(lsp-log-io nil)
 '(lsp-vetur-format-options-tab-size 4)
 '(lsp-vetur-format-options-use-tabs t)
 '(menu-bar-mode nil)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
	 ("nongnu" . "https://elpa.nongnu.org/nongnu/")
	 ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(lsp-tailwindcss typescript-mode treemacs-icons-dired treemacs-tab-bar doom-modeline yasnippet-snippets yasnippet-classic-snippets yapfify yaml-mode yaml ws-butler which-key vterm treemacs-projectile treemacs-magit treemacs-all-the-icons shrink-path pyvenv powerline paradox ov multiple-cursors modus-themes meow math-preview lsp-mode latex-math-preview highlight-indentation gdscript-mode frame-local format-all flycheck eproject elisp-lint elisp-format ein dashboard dash-functional company bui auctex all-the-icons-gnus all-the-icons-dired))
 '(paradox-github-token t)
 '(read-process-output-max (* 1024 1024) t)
 '(set-scroll-bar-mode nil)
 '(sgml-basic-offset 4)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(tab-line-close-button-show nil)
 '(tab-line-new-button-show nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(treemacs-filewatch-mode t)
 '(treemacs-width-is-initially-locked nil)
 '(warning-suppress-log-types '((lsp-mode))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fill-column-indicator ((t (:inherit default :stipple nil :foreground "#4e5059" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight ultra-light)))))


;; my functions
(defun my-open-init-file ()
  "Open the init file."
  (interactive)
  (find-file user-init-file))

(define-skeleton html-template
  "My initial HTML5 template."
  nil
  "<!DOCTYPE html>" \n
  "<html lang=\"en\">" \n
  "<head>" \n
  "<meta charset=\"utf-8\">" \n
  "<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">" \n
  "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">" \n
  "<title>Template</title>" \n
  "</head>" \n
  "<body>" \n
  "<div id=\"app\"></div>" \n
  "</body>" \n
  "</html>" \n)

(defun byte-recompile-all ()
  "Recompile all packages to bytecode."
  (interactive)
  (byte-recompile-directory package-user-dir nil 'force))

(defun format-code ()
  "Decides wich kind of formatting to use."
  (interactive)
  (condition-case nil
	  (lsp-format-buffer)
	(error
	 (format-all-buffer 't))))

(defun my-create-scratch-c-file ()
  "Create a scratch file for C code on /tmp."
  (interactive)
  (find-file "/tmp/scratch.c"))

(defun open-terminal-below ()
  "Open the terminal into a split window below."
  (interactive)
  (split-window-below)
  (other-window 1)
  (vterm))

(defun asm-mode-setup ()
  "Doc String."
  (set (make-local-variable 'gofmt-command) "asmfmt")
  (add-hook 'before-save-hook 'gofmt nil t)
  )

(add-hook 'asm-mode-hook 'asm-mode-setup)

(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces.  IGNORED."
  (let* ((anchor (c-langelem-pos c-syntactic-element))
         (column (c-langelem-2nd-pos c-syntactic-element))
         (offset (- (1+ column) anchor))
         (steps (floor offset 'c-basic-offset)))
    (* (max steps 1)
       'c-basic-offset)))


(c-add-style "leug"
			 '("linux"
			   (c-basic-offset . 4)		; Guessed value
			   (c-offsets-alist
				(arglist-cont-nonempty
				 c-lineup-gcc-asm-reg
				 c-lineup-arglist-tabs-only))))

(provide 'init)
;;; init.el ends here
