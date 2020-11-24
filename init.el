
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (auctex))))
  (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Sets the fill-column param to 60
(setq-default fill-column 60)

;; Custom key rebindings
;;
;;
;; Global key bindings
(global-set-key (kbd "C-c <right>") 'next-buffer)
(global-set-key (kbd "C-c <left>") 'previous-buffer)
;;
;; Org mode key bindings
(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "$") 'yf/org-electric-dollar))) ;; Substitutes $ with \(\) for math mode




;; This function was taken from the conf.org file from https://github.com/rvf0068/.emacs.d
;; from Nicolas Richard <theonewiththeevillook@yahoo.fr>
;; Date: Fri, 8 Mar 2013 16:23:02 +0100
;; Message-ID: <87vc913oh5.fsf@yahoo.fr>
(defun yf/org-electric-dollar nil
  "When called once, insert \\(\\) and leave point in between.
   When called twice, replace the previously inserted \\(\\) by one $."
  (interactive)
  (if (and (looking-at "\\\\)") (looking-back "\\\\("))
      (progn (delete-char 2)
	     (delete-char -2)
	     (insert "$"))
      (insert "\\(\\)")
      (backward-char 2)))

