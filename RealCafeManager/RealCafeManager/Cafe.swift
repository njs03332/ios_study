//
//  Cafe.swift
//  ViewCafeManager
//
//  Created by leesoojeong on 2018. 9. 12..
//  Copyright © 2018년 leesoojeong. All rights reserved.
//


struct Cafe {
    var name: String?
    var location: String?
    var rating: Int? = 0
    
    func getCafeStr() -> String {
        var strTemp = ""
        strTemp += "Name : \(name!)\n"
        strTemp += "Location : \(location!)\n"
        strTemp += "Rating : \(rating!)\n"
        strTemp += "----------\n"
        
        return strTemp
    }
}
