//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Tan Do  on 1/18/18.
//  Copyright © 2018 Tan Do . All rights reserved.
//

import Foundation
//SelfDrivingCar inherits evrything from Car class. SelfDrivingCar class is sub class of Car class
class SelfDrivingCar : Car {
    //? means it could be nil or it could have some string data
    var destination : String?
    //override the drive function to have the same function name but works different
    override func drive() {
        super.drive()
        //binding optional means that we make sure user have something at his point before the program starts the function drive. If it is nothing (nil) it will skips without crashing the app. However if we use ! which means force to unwrap (100 % sure that will be something in the "destination", but if not it will crash the app. So binding optinal is the safer way to unwrap the ? optional.
        if let userHasSetADestination = destination {
            print("The car is flying" + userHasSetADestination)
        }
    }
}
