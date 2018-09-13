//
//  main.swift
//  ContactManager
//
//  Created by GooJinSun on 2018. 9. 12..
//  Copyright © 2018년 GooJinSun. All rights reserved.
//

import Foundation

var contact1 = Contact(name: "Jaewon", phone: "010-5504-4318", email: "kleenex0318@gmail.com", major: "Happiness")
//contact1.contactPrint()

var contact2 = Contact(name: "Yuri", phone: "010-4042-7109", email: "njs03332@gmail.com", major: "Computer Engineering")
//contact2.contactPrint()

var contact3 = Contact(name: "Sujeong", phone: "010-3922-9638", email: "sjlee739@gmail.com", major: "Computer Engineering")
//contact3.contactPrint()

var contact4 = Contact(name: "Gakyeong", phone: "010-5645-5280", email: "gakyunggg297@gmail.com", major: "Linguistics")
//contact4.contactPrint()

var myContactManager = ContactManager()

myContactManager.registerContact(contactObject: contact1)
myContactManager.registerContact(contactObject: contact2)
myContactManager.registerContact(contactObject: contact3)
myContactManager.registerContact(contactObject: contact4)
print("Number of Contact: \(myContactManager.countContacts())\n")
print(myContactManager.showAllContacts())

//var searchResult = myContactManager.searchContact(name: "Jaewon")
//if searchResult != nil {
//    print(searchResult)
//} else {
//    print("No Result Found")
//}
if let searchResult = myContactManager.searchContact(name: "Jaewon"){
    print(searchResult)
} else {
    print("No Result Found")
}

myContactManager.removeContact(name: "Jaewon")
print("Number of Contacts: \(myContactManager.countContacts())\n")
print(myContactManager.showAllContacts())
