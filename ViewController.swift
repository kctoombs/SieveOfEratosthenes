//
//  ViewController.swift
//  SieveOfEratosthenes
//
//  Created by Kenneth Charles on 2/12/16.
//  Copyright © 2016 Kenneth Charles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   /* // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var sieveLabel: UILabel!
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Sieve(20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*// MARK: Actions
    @IBAction func calculate(sender: UIButton) {
        sieveLabel.text = "Calculate Prime Numbers"
    }*/

}

