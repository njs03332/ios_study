//
//  ViewController.swift
//  FlightBooking
//
//  Created by Yuri Kim on 27/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    @IBOutlet weak var returnDateLabel: UILabel!
    
    var buttonTag:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
    }

    // sender는 이벤트를 발생한 객체입니다
    @IBAction func showDatePickerAction(_ sender: UIButton) {
        selectDatePicker.isHidden = !selectDatePicker.isHidden
        buttonTag = sender.tag
    }
    
    @IBAction func showReturnDateAction(_ sender: UISwitch) {
        //if (sender as! UISwitch).isOn {  // 형변환
//        if sender.isOn {
//            returnDateButton.isHidden = false
//            returnDateLabel.isHidden = false
//
//        } else {
//            returnDateButton.isHidden = true
//            returnDateLabel.isHidden = true
//        }
        returnDateButton.isHidden = !sender.isOn
        returnDateLabel.isHidden = !sender.isOn
    }
    
    @IBAction func selectedDateAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        let dateString = formatter.string(from: sender.date)
        print(sender.date)
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControlState.normal)

        } else {
            returnDateButton.setTitle(dateString, for: UIControlState.normal)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

