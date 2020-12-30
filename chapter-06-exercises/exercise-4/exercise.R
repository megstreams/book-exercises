# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string

is_twice_as_long<-function(string1,string2) if(abs(nchar(string1)-nchar(string2))>=min(nchar(string1),nchar(string2))) TRUE

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

string1<-"corn"
string2<-"or"

print(is_twice_as_long(string1,string2))

print(is_twice_as_long("or","or"))
print(is_twice_as_long("or","nor"))
print(is_twice_as_long("or","nort"))
print(is_twice_as_long("or","north"))
print(is_twice_as_long("nor","or"))
print(is_twice_as_long("nort","or"))
print(is_twice_as_long("north","or"))

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"

describe_difference<-function(string1,string2) {
  if(nchar(string1)-nchar(string2)==0) print("Your strings are the same length") else
    if(nchar(string1)-nchar(string2)>0) print(paste("Your first string is longer by", nchar(string1)-nchar(string2),"characters")) else
      print(paste("Your second string is longer by",abs(nchar(string1)-nchar(string2)),"characters")) 
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

string1<-c("a", "ab", "abc", "abcd") #trying out vectors
string2<-c("a", "a", "abcd", "abcde")

describe_difference(string1[4],string2[4]) # change indices in brackets to compare different pairs

print(nchar(string1)-nchar(string2)) # view the differences in length as a vector
