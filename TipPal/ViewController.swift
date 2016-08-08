//
//  ViewController.swift
//  TipPal
//
//  Created by Daena on 8/2/16.
//  Copyright © 2016 Daena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Activate bill field as the first responder so user does not need to click on field to type
        self.billField.becomeFirstResponder()
        
        // set default values for tipLabel and totalLabel styling
        self.tipLabel.alpha = 0.0
        self.totalLabel.alpha = 0.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {

        let defaults = NSUserDefaults.standardUserDefaults()
        
        // load default value for tip default
        let defaultTip = defaults.integerForKey("tip_default")
        self.tipControl.selectedSegmentIndex = defaultTip
        
        // recalculate tip upon view appearing
        self.calculateTip(self.tipControl)
        
        // load default color scheme
        let defaultColor = defaults.integerForKey("color_default")
        self.setColorTheme(defaultColor)
        
        
        super.viewWillAppear(animated)
    }
   

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        // calculate total based on percentage selected an bill entry
        let tipPercentages = [0.15, 0.18, 0.20]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // load appropriate calculations into text fields
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        // call animation to fade in or out tip label and total label whenever tip & total are calculated
        self.animateView(bill)
    }
    
    func animateView(bill: Double){
        // fade out tip and total labels if bill field is 0
        if(bill == 0){
            UIView.animateWithDuration(0.6, animations: {
                self.tipLabel.alpha = 0
                self.totalLabel.alpha = 0
            })
        }
        
        // fade in tip and total labels if bill field is non-zero
        else {
            UIView.animateWithDuration(0.6, animations: {
                self.tipLabel.alpha = 1
                self.totalLabel.alpha = 1
            })
            
        }
    }
    
    func setColorTheme(defaultColor: Int){
        
        // set day color theme
        let dayColor = UIColor(red:120/255, green:245/255, blue:139/255, alpha:0.8)
        // set night color theme
         let nightColor = UIColor(red:12/255, green:33/255, blue:84/255, alpha:0.9)
        // assign color theme to app based on selected default in settings view
        if(defaultColor == 0) {
            self.billView.backgroundColor = dayColor        }
        else {
           self.billView.backgroundColor = nightColor
        }
    }
    
}

