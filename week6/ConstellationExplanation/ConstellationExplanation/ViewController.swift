//
//  ViewController.swift
//  ConstellationExplanation
//
//  Created by Yuri Kim on 15/11/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func backButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true )
    }
    

}

