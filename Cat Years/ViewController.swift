//
//  ViewController.swift
//  Cat Years
//
//  Created by Graham Nessler on 6/23/18.
//  Copyright © 2018 Graham Nessler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onClick(_ sender: Any) {
        if ageInputField.text != "" {
            let age = ageInputField.text
            let computedAge = Int(age!)! * 7
            let ageStr = String(computedAge)
            ageOutputField.text = "Your cat is " + ageStr + " in cat years."
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

