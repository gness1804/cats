//
//  ViewController.swift
//  Cat Years
//
//  Created by Graham Nessler on 6/23/18.
//  Copyright © 2018 Graham Nessler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func showOutputAge(age: String) {
        ageOutputField.text = "Your cat is " + age + " in cat years."
    }
    
    func showOutputNoAge(msg: String)  {
        ageOutputField.text = msg
    }
    
    func catIsTooOld(age: Int) -> Bool {
        if age > 140 {
            return true
        }
            return false
    }
    
    func clearInput()  {
        ageInputField.text = ""
    }

    @IBAction func onClick(_ sender: Any) {
        if ageInputField.text != "" {
            let age = ageInputField.text
            if Int(age!) == nil {
                showOutputNoAge(msg: "Please enter a valid number.")
                return
            }
            let computedAge = Int(age!)! * 7
            if catIsTooOld(age: computedAge) {
                showOutputNoAge(msg: "Your cat is dead.")
                clearInput()
            } else {
                let ageStr = String(computedAge)
                showOutputAge(age: ageStr)
                clearInput()
            }
        } else {
            showOutputNoAge(msg: "Please enter a valid age.")
        }
    }
    
    @IBOutlet weak var ageInputField: UITextField!
    
    @IBOutlet weak var ageOutputField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

