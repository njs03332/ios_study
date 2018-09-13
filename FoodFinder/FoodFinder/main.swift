//
//  main.swift
//  FoodFinder
//
//  Created by Yuri Kim on 13/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import Foundation

let food1 = Food(name: "찹쌀도넛", stores: ["파리바게트", "뚜레쥬르"], ingredients: ["찹쌀", "팥"], isVegan: false, id: 1)
let food2 = Food(name: "덴마크드링킹요구르트", stores: ["GS25", "ministop"], ingredients: ["우유", "복숭아", "산도조절제"], isVegan: false, id: 2)
let food3 = Food(name: "두부과자", stores: ["파리바게트", "아티제"], ingredients: ["두부", "밀가루"], isVegan: true, id: 3)
food1.printFood()
food2.printFood()
food3.printFood()

let manager = FoodManager()
manager.addFood(newFood: food1)
manager.addFood(newFood: food2)
manager.addFood(newFood: food3)

manager.showFoodList()
manager.showVeganFoodList()

print("찹쌀로 찾아보기")
let a = manager.searchFood(keyword: "찹쌀")
for b in a {
    b.printFood()
}

manager.removeFood(foodId: 2)
print("remove 후")
manager.showFoodList()
