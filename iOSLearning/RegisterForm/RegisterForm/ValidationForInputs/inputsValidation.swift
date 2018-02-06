//
//  inputsValidation.swift
//  RegisterForm
//
//  Created by Tan Do  on 2/6/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import Foundation

class inputsValidation {
    //Validate text input for email address
    func isValidEmail(email:String?) -> Bool {
        
        guard email != nil else { return false }
        //There’s some text before the @
        //There’s some text after the @
        //There’s at least 2 alpha characters after a dot. E.g. .com, .jp, .edu
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
    //Validate password input
    func isValidPassword(testStr:String?) -> Bool {
        guard testStr != nil else { return false }
        // at least one uppercase,
        // at least one digit
        // at least one lowercase
        // 8 characters total
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        return passwordTest.evaluate(with: testStr)
    }
}
