//
//  ViewController.swift
//  Cat Years
//
//  Created by Graham Nessler on 6/23/18.
//  Copyright © 2018 Graham Nessler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func showOutput(age: String) {
        ageOutputField.text = "Your cat is " + age + " in cat years."
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
            let computedAge = Int(age!)! * 7
            if catIsTooOld(age: computedAge) {
                ageOutputField.text = "Your cat is dead."
                clearInput()
            } else {
                let ageStr = String(computedAge)
                showOutput(age: ageStr)
                clearInput()
            }
        } else {
            ageOutputField.text = "Please enter a valid age."
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

