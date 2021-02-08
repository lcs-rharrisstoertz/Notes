import Cocoa

//Define a structure that describes a person
struct Person {
    
    // MARK: Properties
    //Each property is an attribute of a given person
    //These are examples of "stored" properties
    //They hold a value- they're "containers"
    var name: String
    var hairColor: String
    var age: Int
    var heightInCentimeters: Double
    var massInKilograms: Double
    
    // MARK: Computer Properties
    //return height in meters
    //a computed property
    var heightInMeters: Double {
        return heightInCentimeters / 100
    }
    //return body mass index
    //a computed property
    var bodyMassIndex: Double {
        return massInKilograms / heightInMeters / heightInMeters
    }
    
    // MARK: Functions
    //say hi
    //a function
    // Use a function over a computer property when we need some info to do the job
    func sayHello(with intro: String) {
        print("\(intro)\(name)")
    }
    
}

var me = Person(name: "Rowan",
                hairColor: "blonde",
                age: 16,
                heightInCentimeters: 177.8,
                massInKilograms: 58.9)

//gets name
me.name


//say hello a few different ways
me.sayHello(with: "Hi, my name is ")
me.sayHello(with: "Hey, how are you, I'm ")
