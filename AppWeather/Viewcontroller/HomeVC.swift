//
//  HomeVC.swift
//  AppWeather
//
//  Created by Administrator on 5/28/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit
import Alamofire
class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "http://api.apixu.com/v1/current.json?key=e8d14995e6d04263bfc101459182805&q=Paris"
        let url1 = "http://api.apixu.com/v1/forecast.json?key=e8d14995e6d04263bfc101459182805&q=07112&days=7"
        Alamofire.request(url1).responseJSON
            { response in
                if let result = response.result.value {
                    let JSON = result as! NSDictionary
                    print(JSON)
                }
                
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
