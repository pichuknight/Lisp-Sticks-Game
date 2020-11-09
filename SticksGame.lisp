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
    (loop do (format t "Guess the number of sticks (between 1 and 50) or give up with 0:")
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

      
(defun cardGame()
;Defining variables
  (let (
	(hit 1)
	(stay 2)
	(quit 0)
	(inc 0)
	(win 0)			       
	(playerIn nil)
	(playerTotal 0)
	(dealerTotal 0)
	(rand1 (random 12))
	(rand2 (random 12))
	(rand3 (random 12))
	(rand4 (random 12))
	(rand5 (random 12))
	(blackjack 21)
	(lose 22))
	;Initializes player total from rand 1 & 2 values
  (incf playerTotal rand1)
  (incf playerTotal rand2)
	;Adds to dealer total from rand 3 values
  (incf dealerTotal rand3)
	;start of loop
	(loop do (format t " Here is your total for your hand, and what you know of the dealers, hit: 1, stay: 2, quit: 0~%")
   ;increase loop by one
		(incf inc)
    ;Prints out values of player and dealer start total
    (Print "Player Total:" )
    ;princ allows output to print on same line
    (princ playerTotal)
    (Print "Dealer Total:" )
    (princ dealerTotal)
		 (terpri)
     ;Take userinput
    (setf playerIn (read))
    
    ;Condations checking playerIn input value
;Condations checking playerIn input value
    (cond ((not (numberp playerIn)) (print "Not a number"))
      ;if player hits they add value
      ((= playerIn hit) (incf playerTotal rand4) (Print "Player Total: ") (princ playerTotal) (incf dealerTotal rand5) (print "Dealer Total: ") (princ dealerTotal))	  
      ;if player stays their value stays the same
      ((= playerIn stay) (Print "Player Total: ") (princ playerTotal) (incf dealerTotal rand5) (print "Dealer Total: ") (princ dealerTotal))
      ;quits game
((= playerIn quit) (print "Quitting game")))
    (cond ((not (numberp playerTotal)) (print "Not a number"))
	  
;Player get's blackjack-21
((= playerTotal blackjack) (print "You win!") (setf win 3))
;Player ran out of money
((>= playerTotal lose) (print "Your broke!"))
;Player has more than dealer more than 21
((<= playerTotal dealerTotal) (print "You Lose!"))
;Player has won three times (has less than dealer)
((> playerTotal dealerTotal) (print "You win!") (setf win 3)))

      ;Breaks out of loop:
      ;Checks if value is a number
      until (and (numberp playerIn)
;Check list: if player quits, if player has won three times, if player has blackjack, if player is broke, if player has more than dealer.
(or (= playerIn quit)(= win 3) (= playerTotal blackjack) (>= playerTotal lose) (<= playerTotal dealerTotal))))))
;gets lots of errors, working on the kinks

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
	((= userinput gametwo) (cardGame))
	((= userinput gamethree) (print "Exit menu"))
	)
;Break out of loop if:
;Checks if input is a number
      until (and (numberp userinput)
		 (or (= userinput gameone) (= userinput gametwo) (= userinput gamethree))))))
(Menu)
