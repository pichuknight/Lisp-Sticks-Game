#|
Currently testing it moved it into a different file for cleaner look:
One it will break out loop if the player quits, if the player has played three times (I think that's how it works), if the player gets 21, if the player is broke, and if the player has more than the dealer. 
...Not 100% how blackjack works so we can talk more about it to make sure the logic works, also learned that to add two variables we use (incf variablename variablename) and I moved all the if type logic into one condition block.
|#
;11/8/2020
;CardGameTesting
;Random Seed maker
(defun randomFun ()
       (setf *random-state* (make-random-state t)))
      
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
	(loop do (format t "Here is your total for your starting hand, and one of the dealers cards, hit: 1, stay: 2, quit: 0~%")
   ;increase loop by one
		(incf inc)
    ;Prints out values of player and dealer start total
    (Print "Player Total: ")
    ;princ allows output to print on same line
    (princ playerTotal)
    (Print "Dealer Total: ")
    (princ dealerTotal)
		 (terpri)
     ;Take userinput
    (setf playerIn (read))
    
    ;Condations checking playerIn input value
;Condations checking playerIn input value
    (cond ((not (numberp playerIn)) (print "Not a number"))
      ;if player hits they add value
      ((= playerIn hit) (incf playerTotal rand4) (Print "Player Total: ") (princ playerTotal))
      ;if player stays their value stays the same
      ((= playerIn stay) (Print "Player Total: ") (princ playerTotal))
      ;quits game
((= playerIn quit) (print "Quitting game"))
;Player get's blackjack-21
((= playerTotal blackjack) (print "You win!"))
;Player ran out of money
((>= playerTotal lose) (print "Your broke!"))
;Player has more than dealer more than 21
((<= playerTotal dealerTotal) (print "You Lose!"))
;Player has won three times (has less than dealer)
((> playerTotal dealerTotal) (print "You win!") (setf win 3)))
;Adds to dealer total from rand 5 value
	     (incf dealerTotal rand5)
      ;Breaks out of loop:
      ;Checks if value is a number
      until (and (numberp playerIn)
;Check list: if player quits, if player has won three times, if player has blackjack, if player is broke, if player has more than dealer.
(or (= playerIn quit)(= win 3) (= playerTotal blackjack) (>= playerTotal lose) (<= playerTotal dealerTotal))))))

(cardGame)
