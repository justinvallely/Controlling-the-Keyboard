//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Justin Vallely on 5/18/15.
//  Copyright (c) 2015 JMVapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var input: UITextField!
    @IBOutlet var text: UILabel!
    @IBAction func button(sender: AnyObject) {
        text.text = input.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // View controller is responsible for the text field
        self.input.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Close the keyboard by touching outside of the text field
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    // Close keyboard on hitting Return key
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }


}

