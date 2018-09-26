//
//  ViewController.swift
//  DigitalFrame
//
//  Created by Yuri Kim on 13/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let travelImages = [UIImage(named:"1.jpg")!,
                            UIImage(named:"2.jpg")!,
                            UIImage(named:"3.jpg")!,
                            UIImage(named:"4.jpg")!,
                            UIImage(named:"5.jpg")!,
                            UIImage(named:"6.jpg")!,
                            UIImage(named:"7.jpg")!,
                            UIImage(named:"8.jpg")!,
                            UIImage(named:"9.jpg")!,
                            UIImage(named:"10.jpg")!,
                            UIImage(named:"11.jpg")!,
                            UIImage(named:"12.jpg")!,
                            UIImage(named:"13.jpg")!,
                            UIImage(named:"14.jpg")!,
                            UIImage(named:"15.jpg")!,
                            UIImage(named:"16.jpg")!,
                            UIImage(named:"17.jpg")!]
        imgView.animationImages = travelImages
        imgView.animationDuration = 17
        speedLabel.text = String(format: "%.2f", speedSlider.value)


    }
    @IBAction func toggleButton(_ sender: Any) {

        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControlState.normal)
        } else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControlState.normal)
        }

    }
    
    //var i = 0
    @IBAction func speedAction(_ sender: Any) {
        //print("speedAction: \(i)")
        //i += 1
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControlState.normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

