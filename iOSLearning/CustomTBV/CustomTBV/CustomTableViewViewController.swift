//
//  CustomTableViewViewController.swift
//  CustomTBV
//
//  Created by Tan Do  on 2/2/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit

class CustomTableViewViewController: UIViewController {
    //create variable info that has array of type Data
    
    @IBOutlet weak var tableView: UITableView!
    var info: [Data] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        info = createArray()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    //create a fucntion that returns an array type of Data
    func createArray() -> [Data] {
        //create tempData array
        var tempData: [Data] = []
        let info1 = Data(title: "MBA Training For New Student", event: "Must go to have credit", date: "02/02/17", host: "Tan Do")
        let info2 = Data(title: "MBA Training For New Student2", event: "Must go to have credit2", date: "02/02/172", host: "Tan Do2")
        let info3 = Data(title: "MBA Training For New Student3", event: "Must go to have credit3", date: "02/02/173", host: "Tan Do3")
        let info4 = Data(title: "MBA Training For New Student4", event: "Must go to have credit4", date: "02/02/174", host: "Tan Do4")
        let info5 = Data(title: "MBA Training For New Student5", event: "Must go to have credit5", date: "02/02/175", host: "Tan Do5")
        let info6 = Data(title: "MBA Training For New Student6", event: "Must go to have credit6", date: "02/02/176", host: "Tan Do6")
        let info7 = Data(title: "MBA Training For New Student7", event: "Must go to have credit7", date: "02/02/177", host: "Tan Do7")
        let info8 = Data(title: "MBA Training For New Student8", event: "Must go to have credit8", date: "02/02/178", host: "Tan Do8")
        let info9 = Data(title: "MBA Training For New Student9", event: "Must go to have credit9", date: "02/02/177", host: "Tan Do9")
        
        //add the infos into an array
        tempData.append(info1)
        tempData.append(info2)
        tempData.append(info3)
        tempData.append(info4)
        tempData.append(info5)
        tempData.append(info6)
        tempData.append(info7)
        tempData.append(info8)
        tempData.append(info9)
        
        return tempData
    }

}
//extends the table we created
extension CustomTableViewViewController: UITableViewDataSource, UITableViewDelegate {
    //return the row which is the array info
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info.count
    }
    //display data into cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellInfo = info[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCells") as! DataCell
        
        cell.setData(infoData: cellInfo)
        
        return cell
    }
    
}
