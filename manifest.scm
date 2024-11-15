;; What follows is a "manifest" equivalent to the command line you gave.
;; You can store it in a file that you may then pass to any 'guix' command
;; that accepts a '--manifest' (or '-m') option.
(define-module (pcl)
  #:use-module (gnu packages)
  #:use-module (guix packages)
  #:use-module (guix build utils))


(specifications->manifest (list "sbcl")))

(define-public build-me
(package
 (name "practical-common-lisp-demo-code")
 (version "1.0.0")))
