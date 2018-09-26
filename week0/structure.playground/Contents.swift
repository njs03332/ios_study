import UIKit

var name = ["Park", "Choi", "Kim", "Lee"]
var age = [3,4,5,6]
var height = [40,50,60,70]

print(name[0], age[0], height[0])
// 이렇게 해도 제대로 찍히긴 해요~ 하지만 불편한 데이터 관리에요

struct Student {
    // structure의 경우 이 값들 초기화 안해도 됨
    var name:String
    var age:Int
    var height:Int
}

var student1 = Student(name: "Park", age: 3, height: 40)
var student2 = Student(name: "Choi", age: 4, height: 60)

print(student1.name,student1.age, student1.height)


// method도 넣을 수 있고 해요~
