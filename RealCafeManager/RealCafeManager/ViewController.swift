//
//  ViewController.swift
//  RealCafeManager
//
//  Created by leesoojeong on 2018. 9. 12..
//  Copyright © 2018년 leesoojeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myCafeManager = CafeManager()
    var rating = 0
    
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    
    @IBOutlet weak var rating1Button: UIButton!
    @IBOutlet weak var rating2Button: UIButton!
    @IBOutlet weak var rating3Button: UIButton!
    @IBOutlet weak var rating4Button: UIButton!
    @IBOutlet weak var rating5Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cafe1 = Cafe(name: "Cafe1", location: "Seoul", rating: 5)
        let cafe2 = Cafe(name: "Cafe2", location: "Seoul", rating: 4)
        let cafe3 = Cafe(name: "Cafe3", location: "Seoul", rating: 3)
        
        myCafeManager.registerCafe(cafeObject: cafe1)
        myCafeManager.registerCafe(cafeObject: cafe2)
        myCafeManager.registerCafe(cafeObject: cafe3)
        
    }
    
    @IBAction func rate1Action(_ sender: Any) {
        rating1Button.backgroundColor = UIColor.brown
        rating2Button.backgroundColor = UIColor.white
        rating3Button.backgroundColor = UIColor.white
        rating4Button.backgroundColor = UIColor.white
        rating5Button.backgroundColor = UIColor.white
        rating = 1
    }
    
    @IBAction func rate2Action(_ sender: Any) {
        rating1Button.backgroundColor = UIColor.brown
        rating2Button.backgroundColor = UIColor.brown
        rating3Button.backgroundColor = UIColor.white
        rating4Button.backgroundColor = UIColor.white
        rating5Button.backgroundColor = UIColor.white
        rating = 2
    }
    
    @IBAction func rate3Action(_ sender: Any) {
        rating1Button.backgroundColor = UIColor.brown
        rating2Button.backgroundColor = UIColor.brown
        rating3Button.backgroundColor = UIColor.brown
        rating4Button.backgroundColor = UIColor.white
        rating5Button.backgroundColor = UIColor.white
        rating = 3
    }
    
    @IBAction func rate4Action(_ sender: Any) {
        rating1Button.backgroundColor = UIColor.brown
        rating2Button.backgroundColor = UIColor.brown
        rating3Button.backgroundColor = UIColor.brown
        rating4Button.backgroundColor = UIColor.brown
        rating5Button.backgroundColor = UIColor.white
        rating = 4
    }
    
    @IBAction func rate5Action(_ sender: Any) {
        rating1Button.backgroundColor = UIColor.brown
        rating2Button.backgroundColor = UIColor.brown
        rating3Button.backgroundColor = UIColor.brown
        rating4Button.backgroundColor = UIColor.brown
        rating5Button.backgroundColor = UIColor.brown
        rating = 5
    }
    
    @IBAction func showAllCafeAction(_ sender: Any) {
        outputTextView.text = myCafeManager.showAllCafe()
    }
    
    @IBAction func searchCafeAction(_ sender: Any) {
        outputTextView.text =
            myCafeManager.searchCafe(name: nameTextField.text!, location: locationTextField.text!, rating: rating)
    }
    
    @IBAction func eraseTextFieldAction(_ sender: Any) {
        nameTextField.text = nil
        locationTextField.text = nil
        rating = 0
        
        rating1Button.backgroundColor = UIColor.white
        rating2Button.backgroundColor = UIColor.white
        rating3Button.backgroundColor = UIColor.white
        rating4Button.backgroundColor = UIColor.white
        rating5Button.backgroundColor = UIColor.white
        
    }
    
    @IBAction func registerCafeAction(_ sender: Any) {
        
        var resultMessage = "please fill\n\n"
        if nameTextField.text == "" {
            resultMessage += "Name\n"
        }
        if locationTextField.text == "" {
            resultMessage += "Location\n"
        }
        if rating == 0 {
            resultMessage += "Rating\n"
        }
        if nameTextField.text != "" && locationTextField.text != "" {
            let newCafe =
                Cafe(name: nameTextField.text, location: locationTextField.text, rating: rating)
            myCafeManager.registerCafe(cafeObject: newCafe)
            resultMessage = "Successfully registered cafe!\n\n"
            resultMessage += newCafe.getCafeStr()
        }
        
        outputTextView.text = resultMessage
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

