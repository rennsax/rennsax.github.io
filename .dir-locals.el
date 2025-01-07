;;; Directory Local Variables            -*- no-byte-compile: t -*-
;;; For more information see (info "(emacs) Directory Variables")

((markdown-mode . ((eval . (add-hook 'before-save-hook #'time-stamp t))
                   (time-stamp-pattern . "10/^last_modified_at: %Y-%m-%d %H:%M:%S %5z$"))))
