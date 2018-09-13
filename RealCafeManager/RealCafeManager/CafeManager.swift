//
//  CafeManager.swift
//  ViewCafeManager
//
//  Created by leesoojeong on 2018. 9. 12..
//  Copyright © 2018년 leesoojeong. All rights reserved.
//

import Foundation

class CafeManager {
    var cafeList = [Cafe]()
    
    func registerCafe(cafeObject: Cafe) {
        cafeList += [cafeObject]
    }
    
    func showAllCafe() -> String {
        var strTemp = ""
        
        for cafe in cafeList {
            strTemp += cafe.getCafeStr()
        }
        return strTemp
    }
    
    func searchCafe(name: String, location: String, rating: Int) -> String {
        
        var strTemp = ""
        var count = 0
        
        if name == "" && location == "" && rating == 0 {
            strTemp = "검색란을 채워주세요."
        }
        else {
            for cafe in cafeList {
                if (name == "" || cafe.name == name)
                    && (location == "" || cafe.location == location)
                    && (cafe.rating == 0 || cafe.rating == rating) {
                    strTemp += cafe.getCafeStr()
                    count += 1
                }
            }
            strTemp = "총 \(count)개의 검색결과가 있습니다.\n\n" + strTemp
        }
        
        return strTemp
    }

}
