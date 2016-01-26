(require 'ido)
(ido-mode t)

;;flx-ido
(require 'flx-ido)

(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)


;;ido-ubiquitous
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                                        ; when Smex is auto-initialized on its first run.
;;set smex keybinding
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.

(provide 'setup-ido)
