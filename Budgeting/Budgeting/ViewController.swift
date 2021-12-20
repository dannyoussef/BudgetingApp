//
//  ViewController.swift
//  Budgeting
//
//  Created by Daniel Youssef on 12/19/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var incomeTextField: UITextField!
    
    @IBOutlet weak var needsLabel: UILabel!
    @IBOutlet weak var wantsLabel: UILabel!
    @IBOutlet weak var savingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func budgetButton(_ sender: Any) {
        let income = Double(incomeTextField.text!)!
        
        let needs = Double(income * 0.50)
        let wants = Double(income * 0.30)
        let savings = Double(income * 0.20)
        
        needsLabel.text = "$\(needs)"
        wantsLabel.text = "$\(wants)"
        savingsLabel.text = "$\(savings)"
    }

}

