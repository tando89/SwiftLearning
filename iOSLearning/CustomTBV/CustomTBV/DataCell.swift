//
//  DataCell.swift
//  CustomTBV
//
//  Created by Tan Do  on 2/2/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit

class DataCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var hostLabel: UILabel!
    
    func setData(infoData : Data) {
        titleLabel.text = infoData.title
        eventLabel.text = infoData.event
        dateLabel.text = infoData.date
        hostLabel.text = infoData.host
    }
}
