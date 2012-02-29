(defgroup inform7 nil
  "Customizations for inform7-mode."
  :group 'languages)

(defface inform7-heading-face
  '((t (:inherit font-lock-preprocessor-face :weight bold :height 1.2)))
  "Face for Inform 7 headings"
  :group 'font-lock-highlighting-faces)

(defvar inform7-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for inform7 major mode")

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.ni" . inform7-mode))

(defconst inform7-font-lock-keywords
  `(( ,(regexp-opt '("Include" "Use" "let" "say" "if" "otherwise") 'words) . font-lock-keyword-face)
    ("\\(\\(?:Book\\|Chapter\\|Part\\|Section\\|Volume\\) - .*\\)" 0 'inform7-heading-face t)
    ("\\(\\[.*?\\]\\)" 0 font-lock-variable-name-face t))
  "Highlighting expressions for inform7-mode")

(define-derived-mode inform7-mode sws-mode
  "Inform7"
  "Major mode for editing inform 7 story files."
  (interactive)
  (kill-all-local-variables)

  (setq mode-name "Inform7")
  (setq major-mode 'inform7-mode)

  ;; default tab width
  (setq sws-tab-width 2)
  (make-local-variable 'indent-line-function)
  (setq indent-line-function 'sws-indent-line)
  (make-local-variable 'indent-region-function)

  (setq indent-region-function 'sws-indent-region)

  (use-local-map inform7-mode-map)
  (set (make-local-variable 'font-lock-defaults) '(inform7-font-lock-keywords nil t)))

(provide 'inform7-mode)
