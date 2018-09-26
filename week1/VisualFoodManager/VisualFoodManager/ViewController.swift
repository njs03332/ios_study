//
//  ViewController.swift
//  VisualFoodManager
//
//  Created by Yuri Kim on 13/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var manager = FoodManager()
    var idTrack = 4
    
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var store1TextField: UITextField!
    @IBOutlet weak var store2TextField: UITextField!
    @IBOutlet weak var ingredient1TextField: UITextField!
    @IBOutlet weak var ingredient2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let food1 = Food(name: "찹쌀도넛", stores: ["파리바게트", "뚜레쥬르"], ingredients: ["찹쌀", "팥"], isVegan: false, id: 1)
        let food2 = Food(name: "덴마크드링킹요구르트", stores: ["GS25", "ministop"], ingredients: ["우유", "복숭아", "산도조절제"], isVegan: false, id: 2)
        let food3 = Food(name: "두부과자", stores: ["파리바게트", "아티제"], ingredients: ["두부", "밀가루"], isVegan: true, id: 3)
        
        manager.addFood(newFood: food1)
        manager.addFood(newFood: food2)
        manager.addFood(newFood: food3)
    }
    
    @IBAction func searchAction(_ sender: Any) {
        if let resultFoodList = manager.searchFood(keyword: searchTextField.text!) {
            var strTemp = ""
            for foodTemp in resultFoodList {
                strTemp += foodTemp.returnFoodString()
            }
            outputTextView.text = strTemp
        } else {
            outputTextView.text = "Sorry. We didn't find any results by \(searchTextField.text!)."
        }
        
    }

    @IBAction func showFoodListAction(_ sender: Any) {
        outputTextView.text = manager.showFoodList()

    }
    
    @IBAction func showVeganFoodListAction(_ sender: Any) {
        outputTextView.text = manager.showVeganFoodList()
        
    }
    
    @IBAction func addAction(_ sender:Any) {
        var foodTemp = Food()
        
        foodTemp.name = nameTextField.text!
        foodTemp.stores = [store1TextField.text!, store1TextField.text!]
        foodTemp.ingredients = [ingredient1TextField.text!, ingredient2TextField.text!]
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            textLabel.text = "First Segment Selected";
        case 1:
            textLabel.text = "Second Segment Selected";
        default:
            break
        }
        foodTemp.isVegan = segmentedControl.selectedSegmentIndex
        foodTemp.id = idTrack
        idTrack += 1
        
        manager.addFood(newFood: foodTemp)
        outputTextView.text = "We have added your new food to our database!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

