(defun randomFun (start end)
       (+ start (random end)))
(defun stickGame ()
  (defvar randNum (randomFun 10 50))
  (defvar userIn nil)
  (defvar giveUp 0)
  (defvar increments 0)
  (loop do (format t "'Guess the number of sticks (between 1 and 100) or give up with 0:'")
	   (incf increments)
	   (terpri)
	   (setf userIn (read))
	   (cond ((not (numberp userIn)) (print "Not a number"))
		 ((< userIn 1) (print "Not possible"))
		 ((> userIn 100) (print "Not possible"))
		 ((< userIn randNum) (print "higher"))
		 ((> userIn randNum) (print "lower"))
		 ((= userIn randNum) (print "YOU WIN"))
		 )
	until (and (= userIn randNum)
		   (or (= userIn giveUp)))))

;Runs a text base menu to allow user to play game.
(defun condations()
;Defining Local variables.
  (let (
    (gameone 1)
    (gametwo 2)
    (gamethree 3)
    (userinput nil)
    (increments 0))
    ;Begin of Loop.
    ;Prompt user to enter a certain value.
    (loop do (format t "'Enter a number to play game, 1:Sticks Game, 2:Card Game, 3:Exit': ")
    ;Increase the loop by one. 
    (incf increments)
    ;Takes input from the user.
    (terpri)
    (setf userinput (read))
;Checking 'userinput' value and output the what the condition is equal to.
    (cond ((not (numberp userinput)) (print "Not a number"))
	((< userinput gameone) (print "Not a option"))
	((> userinput gamethree) (print "Not a option"))
	((= userinput gameone) (print "Playing Sticks Game") (stickGame))
	((= userinput gametwo) (print "Playing Card Game"))
	((= userinput gamethree) (print "Exit menu"))
	)
  ;Break out of loop if:
      until (and (numberp userinput)
		 (or (= userinput gameone) (= userinput gametwo) (= userinput gamethree))))))
(condations)
            
