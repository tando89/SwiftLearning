//
//  ViewController.swift
//  StringAndCharacters
//
//  Created by Tan Do  on 2/22/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myFirstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myFirstLabel.text = "1.Leadership: This passport will serve as a guide to signature activities being offered by the college. At the end of the academic year, MBA students who earn seven stamps on activities/events that represent the MBA Program Learning Goals will be awarded with an MBA Leadership Certificate."
        myFirstLabel.halfTextColorChange(fullText: myFirstLabel.text!, changeText: "1.Leadership:")
    }

}

extension UILabel {
    func halfTextColorChange (fullText : String , changeText : String ) {
        let strNumber: NSString = fullText as NSString
        let range = (strNumber).range(of: changeText)
        let attribute = NSMutableAttributedString.init(string: fullText)
        attribute.addAttribute(NSAttributedStringKey.font, value: UIFont.boldSystemFont(ofSize: 17.0), range: range)
        self.attributedText = attribute
    }
    
}
