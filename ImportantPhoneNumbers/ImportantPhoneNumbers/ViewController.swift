//
//  ViewController.swift
//  ImportantPhoneNumbers
//
//  Created by sneakysneak on 29/11/2018.
//  Copyright © 2018 sneakysneak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtFieldNumbers: UITextField!
    
    @IBAction func Save(_ sender: Any) {
        
        UserDefaults.standard.set(txtFieldNumbers.text, forKey: "number")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            txtFieldNumbers.text = number
        }
    }
}

