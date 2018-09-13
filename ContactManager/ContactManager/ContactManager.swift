//
//  ContactManager.swift
//  ContactManager
//
//  Created by GooJinSun on 2018. 9. 12..
//  Copyright © 2018년 GooJinSun. All rights reserved.
//

import Foundation

class ContactManager{
    var contactList = [Contact]()
    
    func registerContact(contactObject:Contact) {
        contactList += [contactObject]
    }
    
    func showAllContacts() -> String{
        var strTemp = ""
        for contactTemp in contactList {
            strTemp += "Name: \(contactTemp.name)\n"
            strTemp += "Phone: \(contactTemp.phone)\n"
            strTemp += "Email: \(contactTemp.email)\n"
            strTemp += "Major: \(contactTemp.major)\n"
            strTemp += "***************************************\n"
        }
        return strTemp
    }
    
    func countContacts() -> Int{
        return contactList.count
    }
    
    func searchContact(name:String) -> String? {
        var strTemp = ""
        for contactTemp in contactList {
            if contactTemp.name == name {
                strTemp += "Search Results \n"
                strTemp += "Name: \(contactTemp.name)\n"
                strTemp += "Phone: \(contactTemp.phone)\n"
                strTemp += "Email: \(contactTemp.email)\n"
                strTemp += "Major: \(contactTemp.major)\n"
                strTemp += "***************************************\n"
                return strTemp
            }
        }
        return nil
    }
    
    func removeContact(name:String) {
        for (index, value) in contactList.enumerated() {
            if value.name == name {
                contactList.remove(at: index)
            }
        }
    }
    

}
