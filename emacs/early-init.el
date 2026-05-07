(setq inhibit-startup-message 1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(set-fringe-mode 10)

(setq visible-bell t)

;; initialize packages
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents 
  (package-refresh-contents))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package doom-themes)
(load-theme 'doom-dark+ t)
