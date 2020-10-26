;Updated from 10/25/2020
;Creates Seed for Randomizer
(defun randomFun ()
       (setf *random-state* (make-random-state t)))
;Runs SticksGame
(defun stickGame ()
  (let (
  (randNum (+ (random 50)10))
  (userIn nil)
  (giveUp 0)
  (increments 0))
  (loop do (format t "Guess the number of sticks (between 10 and 50) or give up with 1:")
	   (incf increments)
	   (terpri)
	   (setf userIn (read))
	   (cond ((not (numberp userIn)) (print "Not a number"))
		 ((= userIn 9) (print "To Low of allowed number try again"))
		 ((> userIn 50) (print "To High of allowed number try again"))
		 ((< userIn randNum) (print "Higher"))
		 ((> userIn randNum) (print "Lower"))
		 ((= userIn randNum) (print "YOU WIN"))
		 ((= userIn giveUp) (print "You gave up"))
		 )
;Breaks out Loop
;Checks if input is a number
	until (and (numberp userIn)
		   (or (= userIn randNum) (= userIn giveUp))))))


;Runs a text base menu to allow user to play game.
(defun Menu()
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
    (setf userinput (read))
;Checking 'userinput' value and output the what the condition is equal to.
    (cond ((not (numberp userinput)) (print "Not a number"))
	((< userinput gameone) (print "Not a option"))
	((> userinput gamethree) (print "Not a option"))
	((= userinput gameone) (stickGame))
	((= userinput gametwo) (print "Playing Card Game"))
	((= userinput gamethree) (print "Exit menu"))
	)
					;Break out of loop if:
	 ;Checks if input is a number
      until (and (numberp userinput)
		 (or (= userinput gameone) (= userinput gametwo) (= userinput gamethree))))))


