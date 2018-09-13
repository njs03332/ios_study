//
//  Food.swift
//  FoodFinder
//
//  Created by Yuri Kim on 13/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import Foundation

struct Food {
    var name:String?
    var stores:Array<String>?
    var ingredients:Array<String>?
    var isVegan:Bool?
    var id:Int?
    
    func printFood() {
        print("Information about \(name!)")
        print("Sold in \(stores!)")
        print("Ingredients: \(ingredients!)")
        if self.isVegan! {
            print("Vegan")
        } else {
            print("Non-Vegan")
        }
        print("--------------")
    }
    
    func returnFoodString() -> String {
        var strTemp = ""
        strTemp += "Information about \(name!)\n"
        strTemp += "Sold in \(stores!)\n"
        strTemp += "Ingredients: \(ingredients!)\n"
        if self.isVegan! {
            strTemp += "Vegan\n"
        } else {
            strTemp += "Non-Vegan\n"
        }
        strTemp += "--------------\n"
        return strTemp
    }
}
