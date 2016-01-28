(require 'js2-mode)
(require 'js2-refactor)

(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.jshintrc$" . javascript-mode))
(add-to-list 'magic-mode-alist '("#!/usr/bin/env node" . js2-mode))


(add-to-list 'load-path (expand-file-name "tern/emacs" site-lisp-dir))
(autoload 'tern-mode "tern.el" nil t)
;;(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'auto-complete
  '(eval-after-load 'tern
     '(progn
        (require 'tern-auto-complete)
        (tern-ac-setup))))

(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

(provide 'setup-js)
