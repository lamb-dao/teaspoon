(defsystem :teaspoon
  :depends-on (
               ;; functional style
               :qlot
               :alexandria
               :serapeum
               :fset
               :misc-extensions ;; fset helper
               :cl-transducers
               :listopia
               :clazy
               :cl-algebraic-data-type
               :access
               :arrow-macros
               :lparallel
               :stmx
               :depot
               :mito
               ;; :clj-coll
               )
  :serial t
  :components ((:file "teaspoon") ; a .lisp file
               (:static-file "README.org")))
