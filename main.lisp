(in-package #:enhanced-find-class)

(declaim (inline find-class)
         (ftype (function ((or symbol class) &optional t t)
                          (or null class))
                find-class))

(defun find-class (class-designator &optional (errorp t) environment)
  (if (typep class-designator 'class)
      class-designator
      (cl:find-class class-designator errorp environment)))

(define-compiler-macro find-class (&whole whole class-designator &rest rest)
  (if (typep class-designator '(cons (eql quote) symbol))
      `(cl:find-class ,class-designator ,@rest)
      whole))


(declaim (inline (setf find-class))
         (ftype (function ((or null class) symbol &optional t t)
                          (or null class))
                (setf find-class)))

(defun (setf find-class) (new-class class-name &optional errorp environment)
  (setf (cl:find-class class-name errorp environment)
        new-class))

(define-compiler-macro (setf find-class) (new-class &rest args)
  `(setf (cl:find-class ,@args) ,new-class))
