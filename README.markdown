# inform7-mode

This is a pretty basic emacs major mode for editing [Inform 7][i7]
story files. It handles highlighting and indentation, but nothing else
at the moment. So you'll still need the full Inform IDE for actual
development.

## Installation

 1. Clone this repo into `~/.emacs.d/vendor/`, or download
 [inform7-mode.el] and put it wherever you feel like.
 2. Add the following to you init file:
```elisp
(add-to-list 'load-path "~/.emacs.d/vendor/inform7-mode/")
(autoload 'inform7-mode "inform7-mode"   "Major mode for editing inform 7 story files." t)
(add-to-list 'auto-mode-alist '("\\.ni" . inform7-mode))
```
 3. Profit!

[i7]:http://inform7.com/
[inform7-mode.el]:https://github.com/fred-o/inform7-mode/raw/master/inform7-mode.el
