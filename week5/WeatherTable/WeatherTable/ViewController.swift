//
//  ViewController.swift
//  WeatherTable
//
//  Created by Yuri Kim on 11/10/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var datalist = [[String:String]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let dict1 = ["지역":"한국", "날씨": "비"]
        let dict2 = ["지역":"일본", "날씨": "맑음"]
        let dict3 = ["지역":"중국", "날씨": "눈"]
        let dict4 = ["지역":"스페인", "날씨": "우박"]
        let dict5 = ["지역":"미국", "날씨": "흐림"]
        let dict6 = ["지역":"이탈리아", "날씨": "비"]
        let dict7 = ["지역":"태국", "날씨": "맑음"]
        let dict8 = ["지역":"쿠바", "날씨": "눈"]
        let dict9 = ["지역":"코스타리카", "날씨": "우박"]
        let dict10 = ["지역":"북한", "날씨": "흐림"]
        
        datalist = [dict1, dict2, dict3, dict4, dict5, dict6, dict7, dict8, dict9, dict10]
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
//        print("indexPath section: \(indexPath.section)")
//        print("indexPath row: \(indexPath.row)")
        var dicTemp = datalist[indexPath.row]
        cell.textLabel!.text = dicTemp["지역"]
        let weatherStr = dicTemp["날씨"]
        cell.detailTextLabel!.text = dicTemp["날씨"]
        
        if weatherStr == "맑음" {
            cell.imageView!.image = UIImage(named: "_MG_0028sello.jpg")
        } else if weatherStr == "비" {
            cell.imageView!.image = UIImage(named: "_MG_0086sello.jpg")
        } else if weatherStr == "흐림" {
            cell.imageView!.image = UIImage(named: "_MG_0149.JPG")
        } else if weatherStr == "눈" {
            cell.imageView!.image = UIImage(named: "_MG_0154.JPG")
        } else {
            cell.imageView!.image = UIImage(named: "_MG_0164sello.jpg")
        }
        
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

