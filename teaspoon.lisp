
(ql:quickload :access)
(ql:quickload :fset)
(ql:quickload :misc-extensions) ;for gmap helper for fset
(ql:quickload :listopia)

                                        ; package def
(defpackage :teaspoon
                                        ; whole package import
  (:use :cl :str :cmd :file-finder)
                                        ; shadowing, declares dominant function
  (:shadowing-import-from :cmd :current-directory)
                                        ; specific function import to this namespace
  (:import-from :uiop
   :subdirectories :directory-files :getcwd)
                                        ; rename package and or function
  (:local-nicknames (:jzon :com.inuoe.jzon))
                                        ; export functions and params to the click: name space
  (:export
   :pwd
   :ls
   :cd
   :cat
   :grep
   :which
   :echo
   :find-dir
   :on-start
   :on-project
   :touch ; &&& add to docs
   :move-file ; &&& add to docs
   :*default-pathname-initialized*
   :*default-pathname-project*
   ))

                                        ; enter package
(in-package :click) ; Also enter this in the REPL!
