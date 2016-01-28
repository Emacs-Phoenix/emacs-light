(require 'redo+)

(global-set-key (kbd "M-_") 'redo)

(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "s-z") (lambda (char) (interactive "cZap up to char backwards: ") (zap-up-to-char -1 char)))

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C-.") 'mc/mark-all-like-this)
(global-set-key (kbd "C-s-<mouse-1>") 'mc/add-cursor-on-click)

(require 'edit-sword)

(global-set-key (kbd "C-\"") 'toggle-quotes)

(global-set-key (kbd "s-.") 'copy-from-above-command)

(define-key global-map (kbd "C-o") 'vi-open-line-below)
;;(define-key global-map (kbd "C-O") 'vi-open-line-above)
(define-key global-map (kbd "C-S-O") 'vi-open-line-above)
(define-key global-map [(meta shift ?o)] 'vi-open-line-above)

(require 'multiple-cursors)
(require 'visual-regexp)

(provide 'setup-edit)
