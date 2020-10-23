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
    (setf userinput (read))
;Checking 'userinput' value and output the what the condition is equal to.
    (cond ((not (numberp userinput)) (print "Not a number"))
	((< userinput gameone) (print "Not a option"))
	((> userinput gamethree) (print "Not a option"))
	((= userinput gameone) (print "Playing Sticks Game"))
	((= userinput gametwo) (print "Playing Card Game"))
	((= userinput gamethree) (print "Exit menu"))
	)
  ;Break out of loop if:
      until (and (numberp userinput)
            (or (= userinput gameone) (= userinput gametwo) (= userinput gamethree))))))
            
