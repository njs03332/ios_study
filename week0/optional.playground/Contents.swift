import UIKit

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)


print(convertedNumber) //이 경우 optional 이라는 값으로 wrapping이 됨! 그냥 123 아님.

// nil 값 아닌지지 확인하고 출력하기
if convertedNumber != nil {
    print(convertedNumber!)  // forced unwrapping (이거는 nil이 아니라는 확신이 있을 때만 해야 해요 )
}

// optional binding (이거 많이 써요)
if let actualNumber = Int(possibleNumber) {
    print(actualNumber)  // forced unwrapping을 안해도 돼요. optional binding해서 nil 아니라는 게 확인이 되면 unwrapping을 지가 해요.
}

var serverResponseCode:Int? = nil  // ?를 안넣으면 에러 나요
print(serverResponseCode)
