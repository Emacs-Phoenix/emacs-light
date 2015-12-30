;; load dir setting file
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(add-to-list 'load-path site-lisp-dir)


;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

