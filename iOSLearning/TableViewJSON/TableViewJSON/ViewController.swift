//
//  ViewController.swift
//  TableViewJSON
//
//  Created by Tan Do  on 2/2/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var jsonTableView: UITableView!
    var events: [[String: Any]] = [[String: Any]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("https://feedback-server-tand089.c9users.io/events.php").responseJSON { (response) in
            if let responseData = response.result.value as! [String: Any]? {
                if let responseEvents = responseData["Event"] as! [[String: Any]]? {
                    //print(responseEvents)
                    self.events = responseEvents
                    self.jsonTableView?.reloadData()
                }
            }
        }
        jsonTableView.delegate = self
        jsonTableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCells") as! EventsTBViewCell
        if self.events.count > 0 {
            let eachEvent = events[indexPath.row]
            cell.dateLabel?.text = (eachEvent["Date"] as? String) ?? "TBD"
            cell.eventLabel?.text = (eachEvent["Event"] as? String) ?? "TBD"
            cell.hostLabel?.text = (eachEvent["Hosts"] as? String) ?? "TBD"
            cell.locationLabel?.text = (eachEvent["Location"] as? String) ?? "TBD"
        }
        return cell
    }
}

