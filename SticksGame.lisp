(defun randomFun (start end)
       (+ start (random end)))
(defun stickGame ()
  (defvar randNum (randomFun 10 50))
  )
(defun menu ()
  (let (userIn (read)))
(case userIn
  (1 (stickGame)))
