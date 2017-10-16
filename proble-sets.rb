# PS-1 
# 1 multpily
def multiply(a,b)
  x = a * b
  return x
end

# 2 odd/even
def even_or_odd(number)
  if number % 2 == 0
    return "Even"
  else
    return "Odd"
  end
end

# 3 double int

def doubleInteger(i)
  # Double the input!
  
  x = i + i
end

# 4 balltype

class Ball
  # Your code goes here
  def initialize(ball = "regular")
    @ball = ball
    
  end
  
  def ball_type
    if @ball == "super"
      return "super"
    else @ball
      return "regular"
      
    end
  end
  
  # 5 broken sequence

  def find_missing_number(sequence)

  @arr = []
  @arr = sequence.split(" ").map(&:to_i).sort

   

  difference = 0
  temp_one = @arr[1] - @arr[0]

  
  @arr[0...(@arr.size - 1)].each_with_index do |number, i|
    #puts @arr
    #puts "temp #{temp_one}"
    difference =  @arr[i + 1] -  @arr[i] 

    #puts "diff #{difference}"   

    

    if temp_one != difference
      return @arr[i] + 1
    elsif difference > 1
      return @arr[i] + 1
    end
  end 


    
    if temp_one == difference && temp_one != difference
      return 0

    elsif temp_one == difference

      return temp_one 
      
    elsif @arr[0] != 1 
      return 1
    
    elsif temp_one != difference
      return 1
    end

#we find the additive numbers in the sequence and if the next number in the sequence does not equal what is expected then it will return that number. If the sequence returns all intsr a[0] to end a[final] then it returns 0. If the sequence does not return more than two then it puts 2/  
end

#PS-2

#6




def unique(integers)

   #puts " array #{array}" #use this to ouput arrays in one line for the summary
  count = -1
  amount = 0

  array_copy = []

  t = Hash.new
  if integers.size == 1 || integers.size == 0
    return integers

  else 
    integers.each do |i|

      t[i]= amount
      if i != integers[count]

        #puts i
        #puts integer[count]
        count = count + 1
      elsif i == integers[count]
        
       
       # puts i
       # puts integer[count]
       # integers.delete_at(count)

      end
     # puts "count #{count}"
     #puts "index_val #{i}"
      

      amount += 1

    end

    t.each do |key, value|

      array_copy.push(key)
    end

    
   
    return array_copy
    
  end
end

# needs to put delete repetitive duplicates
# puts unique([1, 2, 3, 3, 2, 1, 2, 3, 1, 1, 3, 2])


#7
class Ghost
  # your code goes here

  def initialize

    @color_options = ["white", "yellow", "purple", "red"]
    random_integer = rand(0...4)
    
    
    @color_given = @color_options[random_integer]
  end
  
  def color
    return @color_given
  end
end

ghost = Ghost.new
puts ghost.color


#8 

#problem incorrect index values possibly something to do with the math
def nthterm(first, n, c)
  #first is an array
  # first =  first num in array
  # n = index value we want
  # c = constant add between terms
  sequence = []  
  sequence.push(first)
  #puts "#{sequence}"
  next_number = 0
  counter = 0

  loop do 
      next_number = first - 1 + c
      #puts "nextnum #{next_number}"
      sequence.push(next_number)

      first = next_number
      counter += 1
      #puts "first #{first}"
      
      #puts "#{sequence}"
    break if n == counter
  end
  #puts"coutn #{counter}"
  #puts "n #{n}"
  #puts "#{sequence}"
  return sequence[n]


end
puts nthterm(1, 2, 3)



#9


def smash(words)
 #words.join(" ")
  sentence_string = ""
  
  
  #puts "#{words}"

  words.each do |value|
    sentence_string = sentence_string + value + " "
  end

  
  puts sentence_string[0..sentence_string.size - 2]

end


words = ['hello', 'world', 'this', 'is', 'great']
puts smash(words)

# 10
def calculate
  x = (2 + 2) * 2
  return x
end



#PS-3

#11
def grader(score)
  # TODO: complete me
  grade = ""
  if score >= 0.9 && score < 1
    grade = "A"
  elsif score >= 0.8 && score < 0.9
    grade = "B"
  elsif score >= 0.7 && score < 0.8
    grade = "C"
  elsif score >= 0.6 && score < 0.7
    grade = "D"
  elsif score > 1 || score < 0.6
     grade = "F"
  
  end
  
  return grade
end

puts grader(0.7)





#12 

def sum(numbers)

  if numbers.size == 0
    return 0

  elsif numbers.size > 0
    sums = 0
    numbers.each do |i|
      
      sums = sums + i
      

    end
    return sums

  end

end


#13

def bool_to_word bool
  # TODO
  if bool == true
    return "Yes"
  elsif bool == false
    return "No"
  end

end

puts bool_to_word(true)

#14

class Sleigh
  def authenticate(name, password)


    if name == "Santa Claus" && password == "Ho Ho Ho!"
        return TRUE
    else 
      return FALSE
    end
  end
end


#15
def numberToString(num)
  # Convert a Number to a String
  num.to_s
end
#PS-4

#16

def say_hello(name, city, state)
 name_string = name.join(" ")
 return "Hello, #{name_string}! Welcome to #{city}, #{state}!"
end
say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')


#17

a = "code"
b = "wa.rs"
name = a + b

#18

def get_planet_name(id)
  # This doesn't work; Fix it!
  name = ''
  case id
  when 1
    name = "Mercury"

  when 2
    name = "Venus"

  when 3
    name = "Earth"

  when 4
    name = "Mars"

  when 5
    name = "Jupiter"

  when 6
    name = "Saturn"

  when 7
    name = "Uranus"  

  when 8
    name = "Neptune"

  end
  
  return name
end

#19
# add the value "codewars" to the already defined websites array
websites.push("codewars")

#20

def solution(a, b)

  if a < b
    return "#{a}" + "#{b}" + "#{a}"

  elsif b < a

    return "#{b}" + "#{a}" + "#{b}"

  end
  
end
#return a string of the form short+long+short
#solution("1", "22") # returns "1221"
#solution("22", "1") # returns "1221"


#PS-5

#21

# Write a function "greet" that returns "hello world!"

def greet
  return "hello world!"
end

#22
def square(number)
  number * number
end
  
puts square(2)


#23

def multiply(number_a, number_b)
  result = number_a * number_b
  return result

end


puts multiply(2, 3)


#24
items = Array.new
items.push(:a => "b", :c => "d")

#25

# TODO: This method needs to be called multiple times for the same person (myName).
# It would be nice if we didnt have to always pass in myName every time we needed to great someone.


class Person
  def initialize(myName)
    @firstName = myName
  end

  def name
    @firstName 
  end
  
  def greet(yourName)
    #puts to make it work in here
    return "Hello #{yourName}, my name is #{@firstName}"
  end



end

joe = Person.new('Joe')
joe.greet('Kate') # should return 'Hello Kate, my name is Joe'
joe.name # should == 'Joe'

#26

def calc_mean(ary)
  if !ary.is_a?(Array)
    0
  elsif ary.empty?
    0
  else
    # Your code goes here 

    #add the numbers 
    #divide by the amount of numbers in array
    temp = 0
    ary.each do |index|
      temp = temp + index

    end

    mean = temp / ary.size

    return mean
  end
end


puts calc_mean([1,2,3,4,5])

#PS-6
#27


class Person
  def initialize(firstName, lastName, age)
    @firstName = firstName
    @lastName = lastName
    @age = age
  end
  
  def full_name
    "#{@firstName} #{@lastName}"
  end

  def age
    @age
  end
end

person = Person.new('Yukihiro', 'Matsumoto', 47)
puts person.full_name
puts person.age
#28
def no_odds(values)
  # Return only non-odd values

  new_array = []
  values.each_with_index do |number, ind| #study the each with index more!!
    if ind % 2 == 0
      new_array.push(number)
    end
    
  end
  return new_array
  
end

puts no_odds([0,1,2,3,4,5])

#29
def greet(name)

  if name.upcase

    name_change = name.capitalize
  else
    name_change = name.upcase
  end
  
  return "Hello #{name_change}!"

end


puts greet("maya") # returns "Hello Maya!"
puts greet("JACK") # returns "Hello Jack!"


#30

def digitize(n)
  number_array =[] #convert n into a string to use split. Map lets us create a new array but we must convert back into int
  number_array =  n.to_s.split(" ").map(&:to_i) # SPLIT divided strings into substrings
  return number_array

end

 puts digitize(123)

#31

def squareSum(numbers)

  sum = 0
  square = 0
  numbers.each do | i|
    square = i * i
    sum = sum + square
  end
  
  return sum
end

puts squareSum([1, 2, 2])

#32
#convert string into array
# use the indexes to switch position
# create loop for this?
# convert array into string
#return string
# 
def solution(sentence)
  sentence_arr = []
  sentence_arr = sentence.split(" ")
  #puts "#{sentence_arr}"
  sentence_str = ""
  sentence_arr.reverse_each { |word| sentence_str += "#{word} " }
  #puts  "#{sentence_str}"
  return sentence_str
end
solution("The greatest victory is that which requires no battle")
