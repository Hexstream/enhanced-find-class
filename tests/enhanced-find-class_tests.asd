(asdf:defsystem #:enhanced-find-class_tests

  :author "Jean-Philippe Paradis <hexstream@hexstreamsoft.com>"

  :license "Unlicense"

  :description "enhanced-find-class unit tests."

  :depends-on ("enhanced-find-class"
               "parachute")

  :serial cl:t
  :components ((:file "tests"))

  :perform (asdf:test-op (op c) (uiop:symbol-call '#:parachute '#:test '#:enhanced-find-class_tests)))
