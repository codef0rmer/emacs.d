;;; ELPA
(load "~/.emacs.d/package.el")
(package-initialize)

;;; Marmalade
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))


;;; Auto Complete Mode
(add-to-list 'load-path "/home/codef0rmer/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/codef0rmer/.emacs.d//ac-dict")
(ac-config-default)

;;; load path
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

;;; load color theme
(require 'color-theme-tangotango)
(color-theme-tangotango)

;;; show paren Mode
(show-paren-mode 1)

;;; final newline
;;;(require-final-newline t)

;;; whitespace-mode
;;;(global-whitespace-mode 1)

;;; Javascript Mode
(require 'generic-x)
(when (locate-library "javascript")
  (autoload 'javascript-mode "javascript" nil t)
  (add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode)))
