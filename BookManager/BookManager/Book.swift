//
//  Book.swift
//  BookManager
//
//  Created by Yuri Kim on 06/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

struct Book {
    var name:String?
    var genre:String?
    var author:String?
    
    func bookPrint() {
        print("Name: \(name!)")
        print("Genre: \(genre!)")
        print("Author: \(author!)")
        print("--------")
    }
}
