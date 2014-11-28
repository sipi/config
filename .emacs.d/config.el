
;; src: http://emacswiki.org/emacs/LoadPath
(add-to-list 'load-path "/home/clement/.emacs.d/lisp/") 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Apparence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'color-theme)
(setq color-theme-is-global t)
(require 'color-theme-6pi)
(color-theme-6pi)

(set-default-font "monospace-10")

(column-number-mode t)
(line-number-mode t)         
(global-linum-mode 1)

(blink-cursor-mode nil)
(setq-default visible-bell t)

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;;(require 'ecb)
;;(ecb-minor-mode)
;;(ecb-change-layout "my-layout")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Text
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defun text-mode ()
  (flyspell-mode)
  (turn-on-auto-fill)
  (setq LaTex-indent-level 2)
)

;;(defun latex-mode ()
;  (setq og-macro [?t])
;  (global-set-key (kbd "«") 'my-macro)
;)
(add-hook 'LaTeX-mode-hook 'text-mode)
;(add-hook 'LaTeX-mode-hook 'latex-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'smart-tabs-mode)

(defun dev-mode ()

  ;(setq tab-width 2)

  ;; Afficher la 'parenthèse correspondante'
  (require 'paren)
  (show-paren-mode)

  (require 'fill-column-indicator)
  (fci-mode)
  (setq fill-column 80)

  (hs-minor-mode)
  (global-set-key (kbd "C-h") 'hs-toggle-hiding)
  ;;(global-set-key (kbd "C-\\") 'toggle-selective-display)

  ;(setq-default indent-tabs-mode nil)
  (smart-tabs-insinuate 'c)
)

(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))

;;(add-hook 'c-mode-common-hook   'dev-mode)
(add-hook 'emacs-lisp-mode-hook 'dev-mode)
(add-hook 'java-mode-hook       'dev-mode)
(add-hook 'lisp-mode-hook       'dev-mode)
(add-hook 'perl-mode-hook       'dev-mode)
(add-hook 'php-mode-hook        'dev-mode)
(add-hook 'sh-mode-hook         'dev-mode)
(add-hook 'Latex-mode-hook      'dev-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Misc 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun quit () 
  (interactive)
  (save-buffers-kill-terminal)
)

(setq inhibit-startup-message t)

;;(defun split-in-new-frame (window)
;;  (frame-root-window (make-frame))
;;)
;;(setq split-window-preferred-function 'split-in-new-frame)

 (setq-default indent-tabs-mode nil)
 (add-hook 'c-mode-common-hook
              (lambda () (setq indent-tabs-mode t)))



