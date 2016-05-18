;; 1. List all the emplacements for the Matemáticas Department

(let ((result nil))
	   (dolist (university_centre (list-rel {teach} {matemáticas}))
	     (push
	      (car (list-all-x-of-y {emplacement} university_centre))
	      result))
	   result)
;; 2. Write a function that list all the emplacement for a given department
(defun get-emplacement-for-department (department)
	   (let ((result nil))
	   (dolist (university_centre (list-rel {teach} department))
	     (push
	      (car (list-all-x-of-y {emplacement} university_centre))
	      result))
	   result))

;; 3. List all undergraduate studentes
(list-instances (lookup-element {undergraduate student}))

;; 4. List all the professors teaching at ESI
(with-markers (m1 m2)
  (progn
    (mark-rel-inverse   {is-thought-in} {escuela superior de informática} m1)
    (do-marked (degree m1)
      (mark-rel-inverse {is-a-module-taken-in} degree m2)
      (do-marked (module m2)
	 (print (list-rel-inverse {teaches} module ))))))

(defun get-list-of-professors-in-a-university-center (university-center)
  (with-markers (m1 m2)
  (progn
    (mark-rel-inverse   {is-thought-in} university-center m1)
    (do-marked (degree m1)
      (mark-rel-inverse {is-a-module-taken-in} degree m2)
      (do-marked (module m2)
	 (print (list-rel-inverse {teaches} module )))))))

;; 5. Can David Villa Alises be a post-doc?
(is-x-a-y?  {david villa alises} {post-doc})

