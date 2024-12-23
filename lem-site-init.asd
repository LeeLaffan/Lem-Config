(in-package #:cl-user)

(asdf/parse-defsystem:defsystem "lem-site-init"
  :depends-on ()
  :components ((:module "src"
                :components ((:file "defs")
                             (:file "lem")
                             (:file "vi-mode")
                             (:file "windows")
                             (:file "minibuffer")
                             (:file "multiplexer")
                             (:file "project")))))
