//: Playground - noun: a place where people can play

import UIKit

// type inference에 의해 저절로 String이 됩니다
var str = "Hello, playground"
var version = 1.0
let year = 2015
let handsome = true

// type annotation 얘네 테스트해도 type 똑같이 나옵니다
var str2:String = "Hello, playground"
var version2:Double = 1.0
let year2:Int = 2015
let handsome2:Bool = true

//둘 중에 편한 걸 쓰세요!
version2 = 2.0  //에러 안나요
//year2 = 2016 // 에러나요. 상수임!

print("str: \(type(of: str))")  // String
print(str)

print("version: \(type(of: version))")  // Double
print(version)

print("year: \(type(of: year))")  //Int
print(year)

print("handsome: \(type(of: handsome))")  //Bool
print(handsome)
