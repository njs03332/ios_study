//
//  ViewController.swift
//  VisualBookManager
//
//  Created by GooJinSun on 2018. 9. 6..
//  Copyright © 2018년 GooJinSun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBookManager = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "헤밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
        let book4 = Book(name: "이룰렁", genre: "호러", author: "이수정")
        
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        myBookManager.registerBook(bookObject: book4)
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func removeAction(_ sender: Any){
        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
        if resultBook != nil {
            myBookManager.removeBook(name: nameTextField.text!)
            outputTextView.text = "\(nameTextField.text!) is removed!"
            countLabel.text = "\(myBookManager.countBooks())"
        } else {
            outputTextView.text = "we don't have the book"
        }
    }
    
    @IBAction func searchAction(_ sender: Any){
        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
        if resultBook != nil {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "we don't have the book"
        }
    }
    
    @IBAction func registerAction(_ sender: Any){
        var bookTemp = Book()
        bookTemp.name = nameTextField.text!
        bookTemp.genre = genreTextField.text!
        bookTemp.author = authorTextField.text!
        
        myBookManager.registerBook(bookObject: bookTemp)
        countLabel.text = "\(myBookManager.countBooks())"
        outputTextView.text = "Register Completed"
    }

    
    @IBAction func showAllBookAction(_ sender: Any){
//        print("showAllBookAction")
        outputTextView.text = myBookManager.showAllBooks()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

