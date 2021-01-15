import Cocoa

var str = "Hello, playground"

str = "Goodbye"

var age = 38

//underscores can be used to separate numbers in the code to make them easier to read
//this only affects how they appear in the code and doesn't affect the program
var population = 9_000_000
//strings with multiple lines can be made by putting three quotation marks in a row on separate lines from the text within
var str1 = """
This goes
over multiple
lines
"""
//i can write strings on multiple lines without having them appear separately outside of the code by adding backwards slashes
var str2 = """
This goes \
over multiple \
lines
"""
//variables that are decimals are automatically stored as a "double"
var pi = 3.141
//boolean data types are either true or false
var awesome = true
//I can include variables in strings by writing a backslash followed by the variable name in parantheses
var score = 85
var str3 = "Your score was \(score)"
var results = "The test results are here: \(str3)"
//use "let" instead of "var" to create an unchangeable constant
let taylor = "swift"
//i can also specify a data type
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
