//
//  SettingsViewController.swift
//  TipPal
//
//  Created by Daena on 8/2/16.
//  Copyright © 2016 Daena. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBOutlet weak var defaultColorControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // load defaults for tip percentage and color theme
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTip = defaults.integerForKey("tip_default")
        self.defaultTipControl.selectedSegmentIndex = defaultTip
        let defaultColor = defaults.integerForKey("color_default")
        self.defaultColorControl.selectedSegmentIndex = defaultColor
    }

    @IBAction func onClick(sender: AnyObject) {
        // set default for tip percent
        let selectedTipDefault = defaultTipControl.selectedSegmentIndex
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(selectedTipDefault, forKey: "tip_default")
        defaults.synchronize()
    }
    
    @IBAction func colorClick(sender: AnyObject) {
        // set default for color theme
        let selectedColorDefault = defaultColorControl.selectedSegmentIndex
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(selectedColorDefault, forKey: "color_default")
        defaults.synchronize()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
