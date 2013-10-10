# inform7-mode

This is a pretty basic emacs major mode for editing [Inform 7][i7]
story files. It handles highlighting and indentation, but nothing else
at the moment. So you'll still need the full Inform IDE for actual
development.

## Dependencies

Inform7-mode is based on [sws-mode][jade-mode], which is part of [jade-mode].

## Installation

### Package install

Inform7-mode is available on [MELPA][melpa], and can be installed by
doing `M-x list-packages`, or by eval'ing `(package-install 'inform7-mode)`.

### Manual 

 1. Install [jade-mode] as directed on the [project page][jade-mode]
 2. Clone `git://github.com/fred-o/inform7-mode.git` into `~/.emacs.d/vendor/`
 3. Add the following to you init file:

        (add-to-list 'load-path "~/.emacs.d/vendor/inform7-mode/")
        (autoload 'inform7-mode "inform7-mode"   "Major mode for editing inform 7 story files." t)
        (add-to-list 'auto-mode-alist '("\\.ni" . inform7-mode))

 4. Enjoy!

[i7]:http://inform7.com/
[inform7-mode.el]:https://github.com/fred-o/inform7-mode/raw/master/inform7-mode.el
[jade-mode]:https://github.com/brianc/jade-mode
[melpa]:http://melpa.milkbox.net/
