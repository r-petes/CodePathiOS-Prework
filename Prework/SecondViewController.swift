//
//  SecondViewController.swift
//  Prework
//
//  Created by Rachel Peterson on 9/10/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectDefaultTip(_ sender: UIButton) {
        var selectedTip = "15"
        
        
        if sender.tag == 18 {
            selectedTip = "18"
        }
        
        if sender.tag == 20 {
            selectedTip = "20"
        }
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.defaultTip = selectedTip
        self.navigationController?.pushViewController(vc, animated: true)

        
    }
    

}


