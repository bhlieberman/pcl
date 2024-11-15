;; What follows is a "manifest" equivalent to the command line you gave.
;; You can store it in a file that you may then pass to any 'guix' command
;; that accepts a '--manifest' (or '-m') option.
(define-module (manifest)
  #:use-module (gnu packages)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix build utils)
  #:use-module (guix build-system asdf)
  #:use-module (guix licenses))

(define-public build-me
(package
 (name "practical-common-lisp-demo-code")
 (version "1.0.0")
 (source (local-file "db.lisp"))
 (build-system asdf-build-system/sbcl)
 (synopsis "Code from following through with examples in Practical Common Lisp.")
 (description "An attempt to document my learning of Common Lisp by writing out most of the example code in the chapters of Practical Common Lisp. Also an excuse to learn about any number of ancillary tools such as GNU Guix.")
 (license gpl3)
 (home-page "www.sudoscience.lol")))
