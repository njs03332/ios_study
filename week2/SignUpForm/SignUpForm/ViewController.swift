//
//  ViewController.swift
//  SignUpForm
//
//  Created by Yuri Kim on 25/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var blogTextField: UITextField!
    @IBOutlet weak var outputTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        nameTextField.delegate = self
//        emailTextField.delegate = self
        // storyboard에서 자기자신한테 delegate해줬음
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        nameTextField.resignFirstResponder()
//        emailTextField.resignFirstResponder()
//        passwordTextField.resignFirstResponder()
//        telTextField.resignFirstResponder()
//        blogTextField.resignFirstResponder()
        // is the same as
        textField.resignFirstResponder()

        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("touchesBegan")
        self.view.endEditing(true)
    }

//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touchesEnded")
//    }
//
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touchesMoved")
//    }
    
    @IBAction func signUpAction(_ sender: Any) {
        outputTextView.text = "\(nameTextField.text!)님의 가입을 축하드립니다~..~"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

