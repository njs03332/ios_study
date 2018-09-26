import UIKit

func sayHello() {
    print("Hello")
}

sayHello()

// argument label = parameter name
func sayHello2(name:String) {
    print("Hello \(name)")
}

sayHello2(name: "Yuri")

func sayHello3(name:String) -> String {
    return "Hello " + name
}

print(sayHello3(name: "Yuri"))

// with defualt value
func sayHello4(name:String = "Yuri") {
    print("Hello \(name)")
}
sayHello4()  // default value가 들어감
sayHello4(name: "Kim")

// argument label != parameter label
func sayHello5(insertYourName name:String, internationalAge age:Int) {
    print("\(name) is \(age) years old.")
}
sayHello5(insertYourName: "Yuri", internationalAge: 22)

// without argument label
func sayHello6(_ name:String, _ age:Int) -> String {
    return "\(name) is \(age) years old."
}
sayHello6("Yuri", 22)
