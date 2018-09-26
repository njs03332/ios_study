import UIKit

class Vehicle {
    // class 안에서 stored property 초기화 안해주면 에러 나요
    var currentSpeed = 0.0
    var description:String {
        return "Traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("noiseless")
    }
}

let someVehicle = Vehicle()  //let 했는데 바꾸도 되나 -> 된다!!!! currentSpeed는 var이므로. 

someVehicle.currentSpeed = 1.0
print(someVehicle.description)
print(someVehicle.currentSpeed)
someVehicle.makeNoise()

class Bicycle: Vehicle {
    var hasBasket = false
}

let someBicycle = Bicycle()
someBicycle.hasBasket = true
someBicycle.currentSpeed = 15.0
print(someBicycle.description)
print(someBicycle.hasBasket)

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
    override var description: String {
        return "Traveling at \(currentSpeed) miles per hour, number of passenger: \(currentNumberOfPassengers)"
    }
}

let someTandem = Tandem()
someTandem.hasBasket = true
someTandem.currentNumberOfPassengers = 2
someTandem.currentSpeed = 22.0
print(someTandem.description)

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let someTrain = Train()
someTrain.makeNoise()

class Car: Vehicle {
    var gear = 1
    // init만 쓰면 vehicle에도 init이 있기 때문에 에러남! override 써줘야한다
    override init() {
        print("Car")
    }
    // 인자를 받는 생성자
    init(newGear: Int) {
        gear = newGear
    }
}

let someCar = Car()

let someCar2 = Car(newGear: 5)
print(someCar2.gear)

