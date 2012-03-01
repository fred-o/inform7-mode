(defface inform7-heading-face
  '((t (:inherit font-lock-preprocessor-face :weight bold :height 1.2)))
  "Face for Inform 7 headings"
  :group 'font-lock-highlighting-faces)

(defvar inform7-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "RET") 'newline-and-indent)
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for inform7 major mode")

(defconst inform7-font-lock-keywords
  `(( ,(regexp-opt '("Include" "Use" "let" "say" "if" "otherwise") 'words) . font-lock-keyword-face)
    ("\\[.*\\]" . font-lock-comment-face)
    ("\\(\\(?:Book\\|Chapter\\|Part\\|Section\\|Volume\\) - .*\\)" 0 'inform7-heading-face t)
    ("\".*\\(\\[.*?\\]\\).*\"" 1 font-lock-variable-name-face t))
  "Highlighting expressions for inform7-mode")

(define-derived-mode inform7-mode sws-mode
  "Inform7"
  "Major mode for editing inform 7 story files."
  (visual-line-mode)
  (set (make-local-variable 'font-lock-defaults) '(inform7-font-lock-keywords nil t)))

(provide 'inform7-mode)