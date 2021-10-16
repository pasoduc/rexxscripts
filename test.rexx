/*'clear'*/

/*
if no_value_yet = "NO_VALUE_YET" then
  say "The variable is not yet initialized."
  say no_value_yet
*/

/*
do
  say 8
  say 8 + 10
end
*/

/*
x = 0

do while x < 10
  x = x + 1
  say x
end

say

do while x > 1
  x = x - 1
  say x
end

say

do x = 1 to 10 by 2
  say x
end

say

do x = 1 to 100 by 1 for 3
  say "Loop executed: " x " times."
end
*/

/*
do until word = ''
  say 'Give me a four letter word: '
  pull word

  select
    when word = 'FUCK' then
      say 'Fuck is a bad word!'
    when word = 'SHIT' then
      say 'Shiiiiiiiiiiiiiiiiit'
    when word = 'CUNT' then
      say 'Country signer!'
    when word = 'ARSE' then
      say 'Arse or ass?'
    otherwise
      say word
  end
end
*/

/*
male_count      = 0
female_count    = 0
other_count     = 0
invalid_count   = 0
total_responses = 0

say "Please enter your gender (M/F/O): "

do until gender = ''

  total_responses = total_responses + 1

  pull gender

  select
    when gender = 'M' then
      male_count = male_count + 1
    when gender = 'F' then
      female_count = female_count + 1
    when gender = 'O' then
      other_count = other_count + 1
    otherwise
      invalid_count = invalid_count + 1
  end

end

say "Total responses:  " total_responses - 1
say "Male:             " male_count
say "Female:           " female_count
say "Other:            " other_count
say "Invalid reponses: " invalid_count - 1
say ''
*/
 /*
high = 123
low = 1

say trunc(high / 2)
*/

/* say min(1,2) */

/*
do until x = 10 | x = 20
  pull x
  end
*/

/*
say trunc((51+1)/2)
say trunc((50+1)/2)
*/

/* 'clear' */

/*
j = 1
do while j \= 4
  say j
  j = j + 1
  if j > 1 then iterate
    say "Blue man griup"
end /* Do */
*/

/*
n = 1
j = 5

call custom_routine n j

my_result = result

say max(my_result,n)

exit 0

CUSTOM_ROUTINE: procedure
  arg n1 n2
  return trunc((n1 + n2)/2)
*/

/*
fruit. = ''
fruit.cherry = "Tart!"
substring_string = cherry
say fruit.substring_string
say fruit.cherry

say my_array.my_index = 0
say my_array.my_index
say fruit.
say fruit

my_numbers. = 0
my_numbers.1 = 1 +1
my_numbers.2 = 2
my_numbers.3 = my_numbers.1

say my_numbers. + 5
say my_numbers.3

lista. = ''
listb. = 0
lista. = listb.
*/

/*
array_name. = ''
num_of_elems = 5

do j = 1 to num_of_elems
  array_name.j = j+1
end /* Do */
*/
 /*
do j = 1 to num_of_elems
  say "Here's array element:" array_name.j
end /* Do */
*/
/*
my_array. = 0

my_array.0 = 1
my_array.1 = 1
my_array.1.1 = 11
my_array.1.1.1 = 111
my_array.1.1.1.1 = 1111

say my_array.1.1.1.1
*/
/*
if 1 = 1 then do
  'clear'
  'pwd'
  'ls'
  end
*/

/*
minus = 10 - 100

say minus
*/

/*
arg a b c
say a
say b
say c
*/

/*
/* Uses numbers to delimit what values are parsed into which variables.       */
/* This results in numbers with dashes on the end.                            */
phone = "703-437-9460"
parse value phone with area_code 5 prefix 9 suffix
say area_code
say prefix
say suffix
say

/* Uses numbers to delimit what values are parsed into which variables.       */
/* No dashes now!                                                             */
phone = "703-437-9460"
parse value phone with area_code 4 5 prefix 8 9 suffix
say area_code
say prefix
say suffix
say

/* This uses a variable to hold the delimiter value.                          */
/* It needs to be set in parentheses.                                         */
email   = "justinmarsten@gmail.com"
at_sign = "@"
dot     = "."
parse value email with username (at_sign) site (dot) domain
say domain
say site
say username
say

/* This uses explicitly calling out the delimiter.                            */
website = "https://www.testrexx.org/"
parse value website with boiler "." website "." domain "/"
say boiler
say website
say domain
*/

/*
letters = 'abcdef'
parse arg user_letter .

if pos(user_letter,letters) <> 0 then
  say "The letter --" user_letter "-- is valid"
else
  say "The letter --" user_letter "-- is invalid"

say pos(user_letter,letters)
*/

/*
a = 'tuck'

parse arg user_letter .
position = pos(user_letter, a)

select
  when position <> 0 then
    say position
  otherwise do
    lowercase = parse lower var user_letter .
    if pos(lowercase, a) > 0 then
      say "The position would be:" pos(lowercase, a)
    else
      say "Letter not found"
  end
end
*/

test_array. = ''
test_array.1 = 1
test_array.2 = 2

do j=1 while datatype(test_array.j) == 'NUM'
say test_array.j
end
