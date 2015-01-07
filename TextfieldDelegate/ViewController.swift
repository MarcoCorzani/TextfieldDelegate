//
//  ViewController.swift
//  TextfieldDelegate
//
//  Created by Marco F.A. Corzani on 25.12.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var data : String?
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var textArea: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    textField.delegate = self
    
    }

    


    @IBAction func buttonPressed(sender: AnyObject) {
        
        saveLogic()
        dismissKeyboard()
    }

    // textField nochmal als Action mit ...has Changed conectedjjjj
    @IBAction func textFieldDidChange(sender: AnyObject) {
    
        saveLogic()
    
    }
    
    func saveLogic() {
        data = textField.text
        textArea.text = data
        println("Data: \(data)")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        saveLogic()
        dismissKeyboard()
        return true
    }
    
    func dismissKeyboard()  {
        view.endEditing(false)
    
    }
}



