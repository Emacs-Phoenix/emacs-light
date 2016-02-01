;;Key binding

(global-set-key (kbd "C-\"") 'toggle-quotes)

(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x C-c") 'delete-frame)

;;Completion that uses many different methods to find options.
(global-set-key (kbd "C-<f10>") 'menu-bar-mode)

(define-key key-translation-map [?\C-h] [?\C-?])
(global-set-key (kbd "<f1>") 'help-command)

(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)

(global-set-key (kbd "M-w") 'save-region-or-current-line)


;;; 

;;A regexp/replace command for Emacs with interactive visual feedback
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)

(define-key global-map (kbd "C-M-i") 'indent-code-rigidly)


(define-key global-map (kbd "C-r") 'isearch-backward-use-region)
(define-key global-map (kbd "C-s") 'isearch-forward-use-region)




(provide 'keybinding)
