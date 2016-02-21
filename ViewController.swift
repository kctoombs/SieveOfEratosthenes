//
//  ViewController.swift
//  SieveOfEratosthenes
//
//  Created by Kenneth Charles on 2/12/16.
//  Copyright © 2016 Kenneth Charles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
   // MARK: Properties
   /* @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var sieveLabel: UILabel!
    */
    @IBOutlet weak var getNum: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input
        getNum.delegate = self
        Sieve(20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    /*func textFieldDidEndEditing(textField: UITextField) {
        getNum.text = textField.text
    }*/
    
    // MARK: Actions

    @IBAction func calculatePrimes(sender: UIButton) {
        let input: Int? = Int(getNum.text!)
        let primes = Sieve(input!)
        label.text = primes
    }

}

