//
//  CalendarTableVC.swift
//  Calendar
//
//  Created by Tan Do  on 1/31/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class CalendarTableVC: UITableViewController {
    let calenderUrl = "https://feedback-server-tand089.c9users.io/calendar.php"
    var calendarArray = [[String:AnyObject]]() //Array of dictionary
    @IBOutlet var tblJSON: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getCalendar()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    
    }

    func getCalendar() {
        Alamofire.request(calenderUrl, method: .get).responseJSON {
            response in
            if response.result.isSuccess {
                print("success")
                
                let calendarJSON : JSON = JSON(response.result.value!)
                
                if let calendarInfo = calendarJSON["Calendar"].arrayObject {
                    //self.calendarArray = calendarInfo as! [[String:AnyObject]]
                    self.calendarArray = calendarInfo as! [[String:AnyObject]]
                }
                if self.calendarArray.count > 0 {
                    self.tblJSON.reloadData()
                }
            } else {
                print("Error \(response.result.error)")
            }
            
        }
        
    }
//    func updateCalendar(json: JSON) {
//        if let calendarInfo = json["Calendar"].arrayObject {
//            //self.calendarArray = calendarInfo as! [[String:AnyObject]]
//            self.calendarArray = calendarInfo as! [[String:AnyObject]]
//        }
//        if self.calendarArray.count > 0 {
//            self.tblJSON.reloadData()
//        }
//    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return calendarArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCalendarCells", for: indexPath)

        var dict = calendarArray[indexPath.row]
        cell.textLabel?.text = dict["Date"] as? String
        cell.detailTextLabel?.text = dict["Note"] as? String
        return cell
    }
 

    @IBAction func doneButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
