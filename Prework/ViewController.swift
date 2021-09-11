//
//  ViewController.swift
//  Prework
//
//  Created by Rachel Peterson on 9/9/21.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var billAmountTextField: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    var numberOnScreen = ""
    var defaultTip = "15"
    
    
    // Actually update the screen when tip default is changed

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func inputNumbers(_ sender: UIButton) {
    
        
        if sender.tag == 10 {
            numberOnScreen += "."
        }
        
        else if sender.tag == 11 {
            numberOnScreen = ""
        }
        
        else {
            numberOnScreen += String(sender.tag)
        }

        billAmountTextField.text = numberOnScreen
        tipCalculations()
        
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        tipCalculations()

    }
    
    
    func tipCalculations() {
      // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
}

