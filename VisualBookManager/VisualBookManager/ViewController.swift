//
//  ViewController.swift
//  VisualBookManager
//
//  Created by Yuri Kim on 06/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myBookManager = BookManager()
    // ui를 컨트롤 하기 위한 변수
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    
    @IBOutlet weak var countLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(name: "햄릿", genre: "비극", author:"셰익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author:"헤밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author:"톨스토이")
        
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
    }
    // IB = interface builder
    @IBAction func registerAction(_ sender:Any) {
        var bookTemp = Book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!

        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "register 되었음"
        countLabel.text = "\(myBookManager.countBooks())"

    }
    
    @IBAction func searchAction(_ sender: Any) {
        if let resultBook = myBookManager.searchBook(name: nameTextField.text!) {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "We don't have a book named \(nameTextField.text!)"
        }

    }
    
    @IBAction func removeAction(_ sender: Any) {
        // if exists, remove + give a message
        // if not, notify user that it doesn't exist
        if let _ = myBookManager.searchBook(name: nameTextField.text!) {
            myBookManager.removeBook(name: nameTextField.text!)
            outputTextView.text = "\(nameTextField.text!) was successfully removed!"
            countLabel.text = "\(myBookManager.countBooks())"

        } else {
            outputTextView.text = "We don't have a book named \(nameTextField.text!)."
        }

    }
    
    @IBAction func showAllBooksAction(_ sender: Any) {
        outputTextView.text = myBookManager.showAllBooks()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
,

}

