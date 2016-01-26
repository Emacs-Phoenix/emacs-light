
(require 'window-numbering)
(window-numbering-mode t)

(winner-mode t)
(global-set-key (kbd "C-x <up>") 'winner-undo)
(global-set-key (kbd "C-x <down>") 'winner-redo)

(global-set-key (kbd "C-c C-<left>")  'windmove-left)
(global-set-key (kbd "C-c C-<right>") 'windmove-right)
(global-set-key (kbd "C-c C-<up>")    'windmove-up)
(global-set-key (kbd "C-c C-<down>")  'windmove-down)

(global-set-key (kbd "C-x C--") 'rotate-windows)

(provide 'setup-window)
