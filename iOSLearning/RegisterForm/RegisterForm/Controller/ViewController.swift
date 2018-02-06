//
//  ViewController.swift
//  RegisterForm
//
//  Created by Tan Do  on 2/5/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {
    @IBOutlet weak var emailEdit: UITextField!
    @IBOutlet weak var passwordEdit: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    let registerUrl = "https://feedback-server-tand089.c9users.io/Register.php"
    //reference to the class
    let validateEmail = inputsValidation()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func registerBnt(_ sender: Any) {
        let emailAddress = emailEdit.text
        let passwordStr = passwordEdit.text
        
        let goodEmail = validateEmail.isValidEmail(email: emailAddress)
        let goodPassword = validateEmail.isValidPassword(testStr: passwordStr)
        if goodEmail && goodPassword{
            print("Good")
            let parameters : Parameters = [
                "COYOTEEMAIL": emailEdit.text!,
                "PASSWORD": passwordEdit.text!
            ]
            Alamofire.request(registerUrl, method: .post, parameters: parameters).responseJSON { (response) in
                //self.statusLabel.text = "Successfully Submitted"
                self.successfulMessage(displayText: "Successfully Submitted")
                
                
                if(response.result.error != nil) {
                    self.statusLabel.text = "Unable to register!"
                }
            }
            
        } else {
            print("Email address or password is not valid")
            displayAlertMessage(messageToDisplay: "Email address or password is not valid")
        }

    }

    
    //Alert if email or pw is not valid
    func displayAlertMessage(messageToDisplay: String)
    {
        let alertController = UIAlertController(title: "Alert", message: messageToDisplay, preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
            self.emailEdit.text = ""
            self.passwordEdit.text = ""
            
        }
        
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true, completion:nil)
    }
    
    //alert if register successfully
    func successfulMessage(displayText: String) {
        let successAlert = UIAlertController(title: "Congrat!", message: displayText, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default) {
            (action:UIAlertAction!) in
            self.emailEdit.text = ""
            self.passwordEdit.text = ""
            
        }
        successAlert.addAction(okButton)
        self.present(successAlert, animated: true, completion: nil)
    }
}

