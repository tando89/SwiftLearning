//
//  ViewController.swift
//  SeguesNavigation
//
//  Created by Tan Do  on 1/20/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textEdit: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goTo(_ sender: Any) {
        performSegue(withIdentifier: "goTo2ndScreen", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goTo2ndScreen" {
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.textPassedOver = textEdit.text!
        }
    }
    
}

