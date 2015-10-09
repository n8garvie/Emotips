//
//  ViewController.swift
//  tips3
//
//  Created by Nathan Garvie on 10/8/15.
//  Copyright © 2015 Nathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: ADVSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
   
        var tipPercentages = [0.1, 0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue;
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    
    }
    
    
    @IBAction func onTipChanged(sender: AnyObject) {
        
        var tipPercentages = [0.1, 0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue;
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

