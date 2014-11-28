;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; key 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-unset-key "\C-p") ;; previous-line
(global-unset-key "\C-n") ;; next-line
(global-unset-key "\M-b") ;; backward-word
(global-unset-key "\M-f") ;; forward-word
(global-unset-key "\C-v") ;; scroll-up
(global-unset-key "\M-v") ;; scroll-down
(global-unset-key "\C-z") ;; ???
;(global-unset-key "\C-c") 
(global-unset-key "\C-a")
(global-unset-key "\C-e")
(global-unset-key "\C-l")
(global-unset-key "\C-w")
(global-unset-key (kbd "C-SPC"))

(set 'mode-specific-map-prefix "\C-p")
;(setq mode-specific-map (symbol-function 'mode-specific-command-prefix))
;(define-key global-map "\C-y" 'mode-specific-command-prefix)
(define-key global-map (concat mode-specific-map-prefix "\C-c") 'backward-char)
;(setq outline-minor-mode-prefix "\C-o")



;; (global-unset-key "\C-w") ;; cut
;; (global-unset-key "\M-w") ;; copy
;; (global-unset-key "\C-y") ;; paste 
;; (global-unset-key "\M-y") ;; swap buffer selection

;; Déplacement
(defun next-line-recenter ()
  "next-line follow with a recenter call"
  (interactive)
  (next-line)
  (recenter)
)
(defun previous-line-recenter ()
  "previous-line follow with a recenter call"
  (interactive)
  (previous-line)
  (recenter)
)


(define-key global-map "\C-t" 'next-line-recenter)
(define-key global-map "\C-s" 'previous-line-recenter)

(define-key global-map "\C-r" 'forward-char)
(define-key global-map "\C-c" 'backward-char)

(define-key global-map "\M-c" 'backward-word)
(define-key global-map "\M-r" 'forward-word)

(define-key global-map (kbd "C-l C-c") 'beginning-of-line)
(define-key global-map (kbd "C-l C-r") 'end-of-line)

(global-set-key (kbd "M-t") 'forward-paragraph)
(global-set-key (kbd "M-s") 'backward-paragraph)

(define-key global-map [?\M-«] 'beginning-of-buffer)
(define-key global-map [?\M-»] 'end-of-buffer)

(define-key global-map (kbd "C-l C-g") 'goto-line)


;; Édition
(define-key global-map (kbd "C-d") 'delete-char)
(define-key global-map (kbd "C-v") 'backward-delete-char)

(define-key global-map (kbd "M-d") 'kill-word)
(define-key global-map (kbd "M-v") 'backward-kill-word)

(define-key global-map (kbd "C-l C-d") 'kill-line)
(define-key global-map (kbd "C-l C-v") 'backward-kill-sentence)

(define-key global-map "\C-e" 'dabbrev-expand)
(define-key global-map (kbd "C-/") 'hippie-expand)

(define-key global-map (kbd "C-SPC") 'set-mark-command) 
(define-key global-map (kbd "C-z") 'undo)

;;(define-key global-map "\C-i" 'overwrite-mode) ;; \C-i = TAB ?
 
;;command
(define-key global-map (kbd "C-x C-c") 'compile)
(define-key global-map (kbd "C-x C-s") 'save-buffer)
(define-key global-map (kbd "C-x C-o") 'other-window)
(define-key global-map (kbd "C-x C-f") 'find-file)
(define-key global-map (kbd "C-x C-y") 'yank)
(define-key global-map (kbd "C-x C-d") 'kill-region)
(define-key global-map (kbd "C-x C-q") 'kill-emacs)
(define-key global-map "\M-^" 'shell-command)

(define-key global-map "\C-f" 'isearch-forward)
(define-key isearch-mode-map "\C-t" 'isearch-repeat-forward)
(define-key isearch-mode-map "\C-s" 'isearch-repeat-backward)

(define-key global-map (kbd "C-x c") 'previous-buffer)
(define-key global-map (kbd "C-x r") 'next-buffer)

;;(use-local-map (make-sparse-keymap))
;;(local-unset-k

;(define-key global-map "\C-y" 'mode-specific-command-prefix)


        
