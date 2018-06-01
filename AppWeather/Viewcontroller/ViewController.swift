//
//  ViewController.swift
//  AppWeather
//
//  Created by Administrator on 5/28/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view_login: UIView!
    @IBOutlet weak var tf_username: UITextField!
    
    @IBOutlet weak var tf_password: UITextField!
    let username = "admin"
    let password = "admin"
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func setlayout(){
       
    }
    @IBAction func btn_login(_ sender: UIButton) {
        sethardlogin()
    }
    func sethardlogin(){
        if tf_username.text == username && tf_password.text == password {
            let st = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "home") as! HomeVC
            navigationController?.pushViewController(st, animated: true)
        } else{
            let alert = UIAlertController(title: "Thong bao", message: "Login Fail!!!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

