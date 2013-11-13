(cua-mode t)
(global-linum-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")




(require 'ido)
(ido-mode t)

(defun sudo-edit (&optional arg)
  (interactive "p")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:" (ido-read-file-name "File: ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/")) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("d63e19a84fef5fa0341fa68814200749408ad4a321b6d9f30efc117aeaf68a2e" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
