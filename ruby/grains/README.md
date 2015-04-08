# Grains

Write a program that calculates the number of grains of wheat on a chessboard given that the number on each square doubles.

There once was a wise servant who saved the life of a prince. The king
promised to pay whatever the servant could dream up. Knowing that the
king loved chess, the servant told the king he would like to have grains
of wheat. One grain on the first square of a chess board. Two grains on
the next. Four on the third, and so on.

There are 64 squares on a chessboard.

Write a program that shows:
- how many grains were on each square, and
- the total number of grains


## For bonus points

Did you get the tests passing and the code clean? If you want to, these
are some additional things you could try:

- Optimize for speed.
- Optimize for readability.

Then please share your thoughts in a comment on the submission. Did this
experiment make the code better? Worse? Did you learn anything from it?

You will need the Minitest gem. To install it, open a
terminal window and run:

    gem install minitest

## Source

JavaRanch Cattle Drive, exercise 6 [view source](http://www.javaranch.com/grains.jsp)


#######################################
### COMMENTS EXERCISM
#######################################
1. Good point about removing initialize 'if it is empty'

2. Now I check if n is between 1 and 64

3. I did crate a class variable for this, so I had to bring back initialize