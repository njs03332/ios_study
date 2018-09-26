import UIKit

// mutable dictionary
var d1 = Dictionary<String,Int>()
var d2 = [String:Int]()

if d2.isEmpty {
    print("nothing in dictionary")
}
print(d2)
print(d2.count)

d2["ant"] = 6
d2["snake"] = 0
print(d2)
print(d2.count)

var d3 = ["ant":6, "snake":0, "cheetah":4]

print(d3)

d3["human"] = 2
d3["snake"] = 1
print(d3)

// optional value라서 ! 넣어요. 이거는 나중에 다루어요.
print(d3["cheetah"]!)

// immutable dictionary
let d4 = ["ant":6, "snake":0, "cheetah":4]

// 바꾸기 시도 -> 안됨
