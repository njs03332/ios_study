import UIKit

var age = 0

// while 뒤에 괄호 안넣어요
while age < 5 {
    age += 1
    print(age)
}

//age++, ++age 요런거 못해요 이제. age += 1 로 써야해요

let names = ["a", "b", "c"]


for name in names {
    print("hello, \(name)")
}

let numOfLegs = ["ant":6, "snake":0, "cheetah":4]
for (animalName, legsCount) in numOfLegs {
    print("\(animalName)'s have \(legsCount) legs.")
}

for index in 1...5 {
    print("\(index) times 5 is \(index * 5).")
}

for _ in 1...5 {
    print("hi")
}

let minutes = 60
for tickMark in 0..<minutes {
    print(tickMark)   // 59까지만 나와요
}

let minuteInterval = 5

for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}

for tickMark in stride(from: 0, through: minutes, by: minuteInterval) {
    print(tickMark)
}

// swift3부터는 for(int i = 0; i < 10; i++) 이 문법 없어졌어요
