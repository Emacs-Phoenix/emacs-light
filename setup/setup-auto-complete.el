;; company-mode
(require 'company)
(require 'company-yasnippet)
(require 'company-capf)
(require 'company-keywords)
(require 'company-abbrev)
(add-to-list 'company-backends 'company-tern)
(add-hook 'after-init-hook 'global-company-mode)

(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
(define-key company-active-map (kbd "<tab>") 'company-complete)
(define-key company-active-map (kbd "<return>") nil)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(setq company-auto-complete t)


(setq company-auto-complete nil)

(with-eval-after-load 'company
  (setq company-auto-complete nil)
  (define-key company-active-map (kbd "<return>") nil)
  (define-key company-active-map (kbd ".") nil)
  (define-key company-active-map (kbd "RET") nil))

(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))

(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))

(require 'hippie)
(global-set-key (kbd "C-.") 'hippie-expand-no-case-fold)





(provide 'setup-auto-complete)
