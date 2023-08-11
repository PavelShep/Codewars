=begin
Find Deblicates

DESCRIPTION:
Given an array, find the duplicates in that array, and return a new array of those duplicates. The elements of the returned array should appear in the order when they first appeared as duplicates.

Note: numbers and their corresponding string representations should not be treated as duplicates (i.e., "1" != 1).

Examples
[1, 2, 4, 4, 3, 3, 1, 5, 3, "5"]  ==>  [4, 3, 1]
[0, 1, 2, 3, 4, 5]                ==>  []
=end

def duplicates(arr)
  duplicates = []
  arr.each do |element|
    duplicates << element if arr.count(element) > 1
  end
  duplicates.uniq
end

############################################################################################

=begin
Growth_of_a_Population

In a small town the population is p0 = 1000 at the beginning of a year. The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town. How many years does the town need to see its population greater or equal to p = 1200 inhabitants?

At the end of the first year there will be: 
1000 + 1000 * 0.02 + 50 => 1070 inhabitants

At the end of the 2nd year there will be: 
1070 + 1070 * 0.02 + 50 => 1141 inhabitants (** number of inhabitants is an integer **)

At the end of the 3rd year there will be:
1141 + 1141 * 0.02 + 50 => 1213

It will need 3 entire years.
More generally given parameters:

p0, percent, aug (inhabitants coming or leaving each year), p (population to equal or surpass)

the function nb_year should return n number of entire years needed to get a population greater or equal to p.

aug is an integer, percent a positive or null floating number, p0 and p are positive integers (> 0)

Examples:
nb_year(1500, 5, 100, 5000) -> 15
nb_year(1500000, 2.5, 10000, 2000000) -> 10
Note:
Don't forget to convert the percent parameter as a percentage in the body of your function: if the parameter percent is 2 you have to convert it to 0.02.


=end

def nb_year(p0, percent, aug, p)
  numyears = 0
newpop = p0
while (newpop < p)
  newpop += (newpop * (percent.to_f / 100)).to_i + aug
  numyears += 1
end
numyears
end

#puts nb_year(1500, 5, 100, 5000)

############################################################################################

# Reverse words
#
# Complete the function that accepts a string parameter, and reverses each word in the # string. All spaces in the string should be retained.

# Examples
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"
def reverse_words(str)
  a=[]
  p str.split(/ /).each { |x| a << x.reverse}
  a.join(" ")
end

############################################################################################

=begin
String ends with

Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

Examples:

solution('abc', 'bc') // returns true
solution('abc', 'd') // returns false
=end

def solution(str, ending)
  return str.end_with?(ending)
end

############################################################################################


