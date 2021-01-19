//: [Previous](@previous)
/*:
 
 ### Knowledge check #5
 
 What will happen when the code below is run?
 
 Make a prediction before you actually type and run the code.

 ![kc5](kc5.png)
 
 */
// Type the code below this line...
var x: Int? = 3
var y: Int?

if let notNilX = x, let notNilY = y {
    notNilX * notNilY
} else {
    print ("Cannot compute, x, y, or both are nil.")
}

//: [Next](@next)
