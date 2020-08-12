(asdf:defsystem #:enhanced-find-class

  :author "Jean-Philippe Paradis <hexstream@hexstreamsoft.com>"

  :license "Unlicense"

  :description "Provides a canonical way of converting class designators to classes."

  :depends-on ()

  :version "1.0"
  :serial cl:t
  :components ((:file "package")
	       (:file "main"))

  :in-order-to ((asdf:test-op (asdf:test-op #:enhanced-find-class_tests))))
