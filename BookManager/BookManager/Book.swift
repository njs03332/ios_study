//
//  Book.swift
//  BookManager
//
//  Created by GooJinSun on 2018. 9. 6..
//  Copyright © 2018년 GooJinSun. All rights reserved.
//

struct Book {
    var name:String
    var genre:String
    var author:String
    
    func bookPrint(){
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author: \(author)")
        
    }
}
