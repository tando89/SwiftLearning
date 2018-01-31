//
//  Car.swift
//  Classes and Objects
//
//  Created by Tan Do  on 1/18/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    //properties
    var color = "Black"
    var numberOfSeats = 5
    var typeOfCar : CarType = .Coupe
    //initiaalization to have input parameter (have to have parameter input)
//    init(customerChosenColor : String) {
//        color = customerChosenColor
//    }
    init() {
        
    }
    //with or wihtout parameter
    convenience init (customerChosenColor : String) {
        self.init()
        color = customerChosenColor
    }
    //create method (inside class called method, outside called fucntion)
    func drive() {
        print("It is running well")
    }
}
