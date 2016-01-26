(require 'smart-forward)
(global-set-key (kbd "M-<up>") 'smart-up)
(global-set-key (kbd "M-<down>") 'smart-down)
(global-set-key (kbd "M-<left>") 'smart-backward)
(global-set-key (kbd "M-<right>") 'smart-forward)


(global-set-key (kbd "<prior>") 'previous-buffer)
(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<next>") 'next-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)


(require 'smartparens)
(add-hook 'after-init-hook 'smartparens-global-mode)

(global-set-key (kbd "C-c z") 'goto-last-change)
(global-set-key (kbd "C-z") 'goto-last-change)

(define-key global-map (kbd "C-S-n")
  (λ (scroll-up-line)
     (scroll-up-line)
     (scroll-up-line)
     (scroll-up-line)
     (scroll-up-line)
     (scroll-up-line)))

(define-key global-map (kbd "C-S-<down>")
  (λ (scroll-up-line)
     (scroll-up-line)
     (scroll-up-line)
     (scroll-up-line)))

(define-key global-map (kbd "C-S-p")
  (λ (scroll-down-line)
     (scroll-down-line)
     (scroll-down-line)
     (scroll-down-line)
     (scroll-down-line)
     (scroll-down-line)))

(define-key global-map (kbd "C-S-<up>")
  (λ (scroll-down-line)
     (scroll-down-line)
     (scroll-down-line)
     (scroll-down-line)))

(define-key global-map (kbd "C-S-f")
  (λ (scroll-left 2)))

(define-key global-map (kbd "C-S-b")
  (λ (scroll-right 2)))


(require 'avy)
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-c <SPC>") 'avy-goto-line)

(provide 'setup-move)
