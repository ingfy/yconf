(setq column-number-mode t)
(setq-default indent-tabs-mode nil)
(setq tab-stop-list (number-sequence 4 120 4))

(require 'package) ;; You might already have this line

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize) ;; You might already have this line

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-command "pandoc -s")
 '(markdown-command-needs-filename t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
