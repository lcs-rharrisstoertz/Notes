//: [Previous](@previous)
/*:
 
 ### Knowledge check #4
 
 What will happen when the code below is run?
 
 Make a prediction before you actually type and run the code.
 
 ![kc4](kc4.png)
 
 */
// Type the code below this line...
var x: Int?
var y: Int?

if let notNilX = x, let notNilY = y {
    notNilX * notNilY
} else {
    print ("Cannot compute, x, y, or both are nil.")
}

//: [Next](@next)
