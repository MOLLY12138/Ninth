//
//  ViewController.swift
//  第九次实验2
//
//  Created by apple on 2018/11/13.
//  Copyright © 2018年 mlj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    @IBAction func actionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "action sheet", message: "this is an action sheet", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Purple", style: .default, handler: {
            (action) in
            print("ok clicked")
            self.view.backgroundColor = UIColor.purple
        }))
        alert.addAction(UIAlertAction(title: "Brown", style: .destructive, handler: {
            (action) in
            print("destructive clicked")
            self.view.backgroundColor = UIColor.brown
        }))
        alert.addAction(UIAlertAction(title: "white", style: .cancel, handler: {
            (action) in
            print("cancel clicked")
            self.view.backgroundColor = UIColor.white
        }))
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func login(_ sender: Any) {
        let alert = UIAlertController(title: "Login", message: "Please input your personal information", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Login", style: .default, handler: {
            (action) in
            if let userNameTextFiled = alert.textFields?.first, let passWordTextFiled = alert.textFields?.last {
                print("username:\(userNameTextFiled.text!) password:\(passWordTextFiled.text!)")
            }
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel,
          handler: { (action) in
        }))
        
        alert.addTextField{
            (textField) in
            textField.placeholder = "your user name?"
        }
        alert.addTextField{ (textFiled) in
                textFiled.placeholder = "your password?"
                textFiled.isSecureTextEntry = true
        }
        present(alert, animated: true, completion:nil)
        
    }
    
}

