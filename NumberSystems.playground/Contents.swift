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




//Functions are a way to encapsulate related behavior
//once some behavior is inside a function, the complexity is hidden.
//we can use, or "call", the function  whenever we want
/*
 this is a multi-line comment
 
 Basic syntax of a function:
 
 func functionName(parameter, parameter 2, ...) -> return type {
 
 }
 */

//enumeration: lists possibilities (cases)
/*
 The : Int defines the type of raw value
 abstraction, since it hides complexity
 makes call site easier to read
 */
enum NumberSystemBase: Int {
    case binary = 2 //2 is raw value for this case
    case octal = 8 //8 for this one
    case hexadecimal = 16 //16 for this
}

//get the alternate representation of a value in a different base
func getRepresentation(of valueToConvert: Int, inBase base: NumberSystemBase) -> String {
  
    //creates variable with value of "valueToConvert"
    //variables CAN be changed
    var decimalValueLeftToConvert = valueToConvert

    //creates string
    //string is just text
    var representation = ""

    //the ABSTRACTION we will use is a LOOP
    // Our END condition is that the decimalValueLeftToConvert is 0
    //As long as the condition is true, the code surrounded by brackets will be run repeatedly

    while decimalValueLeftToConvert > 0 {
        //get the next binary digit
        let nextDigit = decimalValueLeftToConvert % base.rawValue
        
        //add that digit to the binary representation
        //Swift is a strictly typed language- it does not automatically convert data types
        // to make int into string, we need to specify this
       
        // if statement to check condition. If true do one thing, if false do something else
        // == is comparison
        if base == .hexadecimal {
           // base is hexadecimal
            // when something other than 0-9, use ABCDE
            //switch statement evaluates some value
            // and take different actions depending on the value
            switch nextDigit {
            case 0...9:
                representation = String(nextDigit) + representation
            case 10:
                representation = "A" + representation
            case 11:
                representation = "B" + representation
            case 12:
                representation = "C" + representation
            case 13:
                representation = "D" + representation
            case 14:
                representation = "E" + representation
            case 15:
                representation = "F" + representation
            default:
                break
            }
        } else {
            //base is binary or octal
            representation = String(nextDigit) + representation
        }
        
        
        //get the decimal value left to convert
        decimalValueLeftToConvert = decimalValueLeftToConvert / base.rawValue
    }
    return representation

}

//call, or use the function

getRepresentation(of: 7, inBase: .binary)


////binary to decimal
////base 2 to base 10
//
////the value we are converting
//let value = "1011011"
//
////what base are we converting from
//let base = 2.0
//
////the exponent value at the rightmost digit
//var exponent = 0.0
//
////current sum in decimal
//var decimalEquivalent = 0.0
//
////iterate over each character
////from right to left
//for character in value.reversed() {
//    //get current digit as double (decimal)
//    if let digit = Double(String(character)) {
//        //add the current sum
//       decimalEquivalent += digit * pow(base, exponent)
//
//        //increase exponent by 1
//        exponent += 1
//    }
//}

////what's the result
//decimalEquivalent

////octal to decimal
////base 8 to base 10
//
////the value we are converting
//let value = "331"
//
////what base are we converting from
//let base = 8.0
//
////the exponent value at the rightmost digit
//var exponent = 0.0
//
////current sum in decimal
//var decimalEquivalent = 0.0
//
////iterate over each character
////from right to left
//for character in value.reversed() {
//    //get current digit as double (decimal)
//    if let digit = Double(String(character)) {
//        //add the current sum
//       decimalEquivalent += digit * pow(base, exponent)
//
//        //increase exponent by 1
//        exponent += 1
//    }
//}
//
////what's the result
//decimalEquivalent

//let value = "FEED"
//let base = 16.0
//var exponent = 0.0
//var decimalEquivalent = 0.0
//for character in value.reversed() {
//    if let digit = Double(String(character)){
//        decimalEquivalent += digit * pow(base, exponent)
//    } else {
//        let nextCharacter = String(character)
//        for scalar in nextCharacter.unicodeScalars {
//            decimalEquivalent += Double(scalar.value - 55) * pow(base, exponent)
//        }
//        }
//    exponent += 1
//        }
//print(decimalEquivalent)



func getDecimalValue (of value: String, base: Double) -> Double {
    var exponent = 0.0
    var decimalEquivalent = 0.0
    for character in value.reversed() {
        if let digit = Double(String(character)){
            decimalEquivalent += digit * pow(base, exponent)
        } else {
            let nextCharacter = String(character)
            for scalar in nextCharacter.unicodeScalars {
                decimalEquivalent += Double(scalar.value - 55) * pow(base, exponent)
            }
            }
        exponent += 1
            }
    return (decimalEquivalent)

}
getDecimalValue(of: "111", base: 2)
getDecimalValue(of: "F1", base: 16)
getDecimalValue(of: "17", base: 8)
