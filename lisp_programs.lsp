(DEFUN addl(l)
       (cond((null l) 0)
         (t (+(car l)(addl (cdr l))))
         )
       )

(DEFUN buildPos(l)
       (cond((null l) nil)
         ((>(car l)0)(cons(car l)(buildPos(cdr l))))
         (t(buildPos(cdr l)))
         )
       )

(DEFUN buildNeg(l)
       (cond((null l)nil)
         ((<(car l)0)(cons(car l)(buildNeg(cdr l))))
         (t(buildNeg(cdr l)))
         )
       )

(DEFUN avg(l)
       (/(addl l)(countNum l))
       )

(DEFUN countNum(l)
       (cond((null l)0)
         (t(+ 1(countNum(cdr l))))
         )
       )

(DEFUN getAge(DS)
       (getf DS :AGE)
       )

(DEFUN getName(DS)
       (getf DS :NAME)
       )

(DEFUN getSal(DS)
       (getf DS :SALARY)
       )

(DEFUN getSex(DS)
       (getf DS :SEX)
       )

(DEFUN modPROP(prop l)
       (remf *propList* prop)
       (setf(getf *propList* prop)l)
       )

(DEFUN addPROP(prop l)
       (setf(getf *propList* prop)l)
       )
