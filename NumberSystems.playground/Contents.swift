import Cocoa

var str = "Hello, playground"

//find the digits that represent 27 in binary
//we know 27 is 11011 in binary

//use remainder operator to get first binary digit
//remainder operator is %
27 % 2

//find decimal value left to convert
//deivision operator is /
27 / 2

//get next binary digit
13 % 2

//get value left to convert
13 / 2

//next digit
6 % 2

//value left
6 / 2

//next digit
3 % 2
3 / 2

1 % 2
1 / 2

//find the digits that represent 154 in binary
// this is 10011010

154 % 2
154 / 2

77 % 2
77 / 2

38 % 2
38 / 2

19 % 2
19 / 2

9 % 2
9 / 2

4 % 2
4 / 2

2 % 2
2 / 2

1 % 2
1 / 2

//10011010 is the correct binary number

//creates constant with value of 76
//constant cannot be changed once created
let valueToConvert = 76

//creates variable with value of "valueToConvert"
//variables CAN be changed
var decimalValueLeftToConvert = valueToConvert

//creates string
//string is just text
var binaryRepresentation = ""

//the ABSTRACTION we will use is a LOOP
// Our END condition is that the decimalValueLeftToConvert is 0
//As long as the condition is true, the code surrounded by brackets will be run repeatedly

while decimalValueLeftToConvert > 0 {
    //get the next binary digit
    let nextBinaryDigit = decimalValueLeftToConvert % 2
    
    //add that digit to the binary representation
    //Swift is a strictly typed language- it does not automatically convert data types
    // to make int into string, we need to specify this
    binaryRepresentation = String(nextBinaryDigit) + binaryRepresentation
    //get the decimal value left to convert
    decimalValueLeftToConvert = decimalValueLeftToConvert / 2
}
binaryRepresentation

//Functions are a way to encapsulate related behavior
//once some behavior is inside a function, the complexity is hidden.
//we can use, or "call", the function  whenever we want
/*
 this is a multi-line comment
 
 Basic syntax of a function:
 
 func functionName(parameter, parameter 2, ...) -> return type {
 
 }
 */
