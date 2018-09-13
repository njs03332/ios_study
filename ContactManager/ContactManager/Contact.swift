//
//  Contact.swift
//  ContactManager
//
//  Created by GooJinSun on 2018. 9. 12..
//  Copyright © 2018년 GooJinSun. All rights reserved.
//

import Foundation

struct Contact {
    var name:String
    var phone:String
    var email:String
    var major:String
    
    func contactPrint(){
        print("Name: \(name)")
        print("Phone: \(phone)")
        print("Email: \(email)")
        print("Major: \(major)")
    }
}
