;;;; look setting

;; disable menu bar
(menu-bar-mode -1)

(when window-system
  ;; disable tool bar, scroll bar
  (tool-bar-mode -1)
  (scroll-bar-mode -1)

  ;; frame title
  (custom-set-variables '(frame-title-format
                          '((:eval (if buffer-file-name
                                       (abbreviate-file-name buffer-file-name)
                                     (or dired-directory "%b")))
                            " - Emacs "
                            emacs-version))))

;; disable startup screen
(custom-set-variables '(inhibit-startup-screen t))

;; disable line wrap
(custom-set-variables '(truncate-lines t))

;; highlight
(global-hl-line-mode 1)                              ; current line
(show-paren-mode 1)                                  ; parens
(custom-set-variables '(show-trailing-whitespace t)) ; spaces before EOL

;; linum
(global-linum-mode +1)

;; anzu
(global-anzu-mode 1)
(custom-set-variables '(anzu-mode-lighter "")
                      '(anzu-deactivate-region t)
                      '(anzu-search-threshold 1000))

;;; advices
(defadvice smartrep-map-internal (around disable-smartrep-echo-keystrokes activate)
  (let ((echo-keystrokes 0))
    ad-do-it))
