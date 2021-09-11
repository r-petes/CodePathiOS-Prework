//
//  SecondViewController.swift
//  Prework
//
//  Created by Rachel Peterson on 9/10/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    var selectedTip = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func selectDefaultTip(_ sender: UIButton) {
        selectedTip = "15"
        
        
        if sender.tag == 18 {
            selectedTip = "18"
        }
        
        if sender.tag == 20 {
            selectedTip = "20"
            
            performSegue(withIdentifier: "ShowDetail", sender: sender)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let ViewController = segue.destination as? ViewController {
            if selectedTip == "18" {
                ViewController.defaultTip = "18"
            }
            if selectedTip == "20" {
                ViewController.defaultTip = "20"
            }
            
                
        }
    }
    }
}



