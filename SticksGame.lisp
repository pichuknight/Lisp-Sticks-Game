;Updated on 11/3/2020
;Creates Seed for Randomizer
(defun randomFun ()
       (setf *random-state* (make-random-state t)))
;Runs SticksGame
(defun stickGame ()
;Defining variables  
  (let (
  (randNum (random 51))
  (userIn nil)
  (giveUp 0)
  (increments 0))
  ;Begin of Loop  
    (loop do (format t "Guess the number of sticks (between 10 and 50) or give up with 0:")
	 ;Increase the loop by one. 
	   (incf increments)
	 (terpri)
	 ;Takes input from user
	 (setf userIn (read))
;Condation made to checking 'userIn' value and outputing correct condation
	 ;Checks if input is a number
	 (cond ((not (numberp userIn)) (print "Not a number"))
	       ;Checks if input is zero, yes exit game
	       ((= userIn giveUp) (print "You gave up"))
	       ;Checks if input is equal to one or is less than nine to tell user to try again
	       ((= userIn 1) (print "To Low of allowed number try again"))
	       ((< userIn 9) (print "To Low of allowed number try again"))
	       ;Checks if input is greater than 50 to tell user to try again
	       ((> userIn 50) (print "To High of allowed number try again"))
	       ;Checks if input is lower than randNum
	       ((< userIn randNum) (print "Higher"))
	       ;Checks if input is higher than randNum
	       ((> userIn randNum) (print "Lower"))
	       ;Checks if input is equal to randNum
	       ((= userIn randNum) (print "YOU WIN"))
	  )
;Breaks out Loop if:
;Checks if input is a number
       until (and (numberp userIn)
		  ;If inputer is equal to randNum or is equal to give up value, exit loop/game
		   (or (= userIn randNum) (= userIn giveUp))))))


;Runs a text base menu to allow user to play game.
(defun Menu()
;Defining variables.
  (let (
    (gameone 1)
    (gametwo 2)
    (gamethree 3)
    (userinput nil)
 ;Increase the loop by one. 
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
