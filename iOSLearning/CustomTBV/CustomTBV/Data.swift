//
//  Data.swift
//  CustomTBV
//
//  Created by Tan Do  on 2/2/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import Foundation

class Data {
    var title: String
    var event: String
    var date : String
    var host : String
    
    init(title: String, event: String, date: String, host: String) {
        self.title = title
        self.event = event
        self.date = date
        self.host = host
    }
}
