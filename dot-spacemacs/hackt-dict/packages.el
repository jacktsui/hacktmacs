;;; packages.el --- hackt-dict Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq hackt-dict-packages
    '(
      ;; package names go here
      bing-dict
      ))

;; List of packages to exclude.
(setq hackt-dict-excluded-packages '())

;; For each package, define a function hackt-dict/init-<package-name>
;;
(defun hackt-dict/init-bing-dict ()
  "Initialize my package"
  (use-package bing-dict
    :commands bing-dict-brief
    :init (evil-leader/set-key "dd" 'bing-dict-brief))
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
