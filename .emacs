;;; ELPA
(load "~/.emacs.d/package.el")
(package-initialize)

;;; Marmalade
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;;; Auto Complete Mode
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

;;; Load path
(add-to-list 'load-path "~/.emacs.d")

;;; load php mode
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;; Load color theme
(require 'color-theme-tangotango)
(color-theme-tangotango)

;;; Show paren-mode
(show-paren-mode 1)

;;; Enable Javascript Mode
(require 'generic-x)
(when (locate-library "javascript")
  (autoload 'js2-mode "js2" nil t)
  (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode)))

;;; Disable indent-tabs Mode
;;(setq-default-tab-width 4)
;;(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
;;(setq-default indent-tabs-mode nil)

;;; Set Default font
(set-default-font "Inconsolata-12")

