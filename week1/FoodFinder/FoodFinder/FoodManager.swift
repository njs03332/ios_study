//
//  FoodManager.swift
//  FoodFinder
//
//  Created by Yuri Kim on 13/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import Foundation

class FoodManager {
    var foodList = [Food]()
    
    func addFood(newFood: Food) {
        foodList += [newFood]
    }
    
    func showFoodList() -> String {
        var strTemp = ""
        for foodTemp in foodList {
            strTemp += foodTemp.returnFoodString()
            
        }
        return strTemp
    }
    
    func showVeganFoodList() -> String{
        var strTemp = ""
        for foodTemp in foodList {
            if foodTemp.isVegan! {
                strTemp += foodTemp.returnFoodString()
            }
        }
        return strTemp
    }
    
    func searchFood(keyword: String) -> [Food]? {
        var listTemp = [Food]()
        for foodTemp in foodList {
            if foodTemp.name!.range(of:keyword) != nil {
                listTemp += [foodTemp]
            }
        }
        return listTemp // might be empty
    }
    
    func removeFood(foodId: Int) {
        for (index, value) in foodList.enumerated() {
            if value.id == foodId {
                foodList.remove(at: index)
                break
            }
        }
    }
}
