guessed_right = 0
guessed_wrong = 0

do while end_this_game <> 'N'

  the_number = random(1,5)

  say "I'm thinking of a number between 1 and 5, what is it?"

  pull your_guess
  say "You entered: " your_guess

  if your_guess = the_number then do
    say "You guessed it! The number was: " the_number
    guessed_right = guessed_right + 1
    end
  else do
    say 'Sorry, the number was: ' the_number
    say 'We should have bet on this!'
    guessed_wrong = guessed_wrong + 1
    if does_nothing = "does_nothing" then
    /***************************************************************************
    * uninitialized variables contain the name of the variable until the       *
    * variable is initialized                                                  *
    ***************************************************************************/
      nop  /* nop is does nothing for the true statement */
  end

  say "Try again? [Y or N]"
  pull end_this_game
end

total_rounds = guessed_right + guessed_wrong
average_correct = guessed_right / total_rounds
average_incorrect = guessed_wrong / total_rounds

say
say "Total rounds played: " total_rounds
say "Number of correct guesses: " guessed_right   average_correct
say "Number of incorrect guesses: " guessed_wrong   average_incorrect
