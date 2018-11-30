//
//  ViewController.swift
//  Tippy Calculator
//
//  Created by Sahba Mobini Farahani on 11/28/18.
//  Copyright © 2018 Sahba Mobini Farahani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    /*internal let tapRecognizer1: UITapGestureRecognizer = UITapGestureRecognizer()
    tipControl.tapRecognizer1.addTarget(self, action: "img_Click:")
    tipControl.img.gestureRecognizers = []
    tipControl.img.gestureRecognizers!.append(cell.tapRecognizer1)*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * 0.2
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

