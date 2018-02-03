//
//  EventsTBViewCell.swift
//  TableViewJSON
//
//  Created by Tan Do  on 2/2/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import UIKit

class EventsTBViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var hostLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
