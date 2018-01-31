//
//  SecondViewController.swift
//  SeguesNavigation
//
//  Created by Tan Do  on 1/20/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var textPassedOver : String?
    
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = textPassedOver
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
