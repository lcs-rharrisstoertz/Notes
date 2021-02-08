import Cocoa

//creating a function
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

//parameters go in round brackets after the function name
//case sensitive
//type when called must match parameter type
// : between parameter and parameter type
func square(number: Int) -> Int {//use arrow to indicate return type
    return number * number//"return" isn't needed if the function only contains one expression
    //can return multiple values by using arrays
}
//functions can send back data using "return"
let result = square(number: 8)
print(result)

//parameter labels
//we can give a parameter both an internal and an external name
func sayHello(to name: String) {
    print("Hello, \(name)!")//"name" makes sense when defining the function
}
sayHello(to: "Taylor")//but "to" makes it so that calling the function reads naturally

//omitting parameter labels
//we don't necessarily have to have an external name
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")//in this case, not having a parameter name makes the code more readable
//in some cases, this is a bad idea- the parameter name can help us understand what the parameter value means

//default parameters
//add = after type then a default value
//so unless specified otherwise, that's the value the function will use
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet2("Taylor")
greet2("Taylor", nicely: false)
//we'll greet Taylor Swift nicely by default
//but if we specify false, we'll be rude
