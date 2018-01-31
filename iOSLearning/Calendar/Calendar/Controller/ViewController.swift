//
//  ViewController.swift
//  Calendar
//
//  Created by Tan Do  on 1/27/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {
    let calenderUrl = "https://feedback-server-tand089.c9users.io/calendar.php"
    let calendarData = CalendarDataModel()
    var calendarArray = [[String:AnyObject]]() //Array of dictionary
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getCalendar()
        
     
    }
    func getCalendar() {
        Alamofire.request(calenderUrl, method: .get).responseJSON {
            response in
            if response.result.isSuccess {
                print("success")
                
                let calendarJSON : JSON = JSON(response.result.value!)
                
                //print(calendarJSON)
                self.updateCalendar(json: calendarJSON)
                print(self.calendarData.date)
            } else {
                print("Error \(response.result.error)")
            }
            
        }
        
    }
    func updateCalendar(json: JSON) {
        if let calendarInfo = json["Calendar"].arrayObject {
            //self.calendarArray = calendarInfo as! [[String:AnyObject]]
            
        }
        
    }
    func updateUI() {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func MoveToCalendar(_ sender: Any) {
        performSegue(withIdentifier: "Move2Calendar", sender: nil)
    }
    
}

