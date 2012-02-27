
(defvar inform7-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for inform7 major mode")

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.ni" . inform7-mode))

(defconst inform7-font-lock-keywords
  `(( ,(regexp-opt '("Part" "Chapter.*" "Section") nil) . font-lock-constant-face)
    ( ,(regexp-opt '("Include" "Use" "let" "say" "if" "otherwise") 'words) . font-lock-keyword-face)
    ("\\(\\[.*?\\]\\)" 0 font-lock-keyword-face t))
  "Highlighting expressions for inform7-mode")

(define-derived-mode inform7-mode fundamental-mode
  "Inform7"
  "Major mode for editing inform 7 story files."
  (interactive)
  (kill-all-local-variables)

  (setq mode-name "Inform7")
  (setq major-mode 'inform7-mode)
  (use-local-map inform7-mode-map)
  (set (make-local-variable 'font-lock-defaults) '(inform7-font-lock-keywords nil t)))

(provide 'inform7-mode)
