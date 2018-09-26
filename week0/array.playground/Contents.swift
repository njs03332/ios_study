import UIKit

// mutable array
var emptyArray = Array<String>()
var emptyArray2 = [String]()

print(emptyArray.count)
print(emptyArray2.count)

emptyArray2.append("Anna")
emptyArray2.append("Alex")

print(emptyArray2)

// literal, type inference
var array3 = ["hey", "ho"]

array3 += ["hee"]
array3 += ["hong"]

print(array3)
print(array3[2])

// change one element
array3[3] = "hi"
print(array3[3])

// ...을 이용하면 여러 개를 한 번에 바꿀 수 있어요
array3[1...3] = ["hh", "hhh", "hhhh"]

print(array3)
print(array3.count)


// immutable array
let array4 = ["hey", "ho"]
print(array4)

// array4[0] = "hello"   // 하면 에러나요!! let이니까요~
// 속도가 immutable이 훨씬 빠르니까 되면 이거 써요
