//
//  ViewController.swift
//  SubmisionForm
//
//  Created by Tan Do  on 2/3/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var fNameLabel: UITextField!
    @IBOutlet weak var lNameLabel: UITextField!
    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var messageLabel: UITextView!
    let submit_url = "https://feedback-server-tand089.c9users.io/feedbackPDO.php"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButton(_ sender: Any) {
        let parameters: Parameters = [
            "FIRSTNAME": fNameLabel.text!,
            "LASTNAME": lNameLabel.text!,
            "STUDENTID": idLabel.text!,
            "COYOTEEMAIL": emailLabel.text!,
            "MESSAGES": messageLabel.text!
        ]
        //send the POST request
        Alamofire.request(submit_url, method: .post, parameters: parameters).responseJSON { (response) in
            
            self.resultLabel.text = "Successfully Submitted"
            
            if (response.result.error != nil) {
                self.resultLabel.text = "Conection Failed"
            }
            
        }
    }
    func postData (url: String, parameters: [String : String]) {
        
    }
}

