//: Playground - noun: a place where people can play

import UIKit

//func loveCal (yourName: String, partnerName: String) -> String {
//    let loveScore = Int(arc4random_uniform(101))
//
//    if loveScore >= 80 {
//        return "You will be loved. Your love score is \(loveScore)"
//
//    } else if loveScore > 40 && loveScore < 80{
//        return "You will be in friendzone. Your love score is \(loveScore)"
//    }
//    else {
//        return "Fake people, fake love!. Your love score is \(loveScore)"
//    }
//
//}
//
//print (loveCal(yourName: "Eric", partnerName: "Mary"))

func bodyMassCal(weight: Float, height: Float) -> String {
    let bMI = weight / height
    //round it into 2 decimal place
    let roundedBMI = String(format: "%.2f", bMI)
    var answer = ""
    if bMI > 25 {
        answer = "You are overweight!"
    } else if bMI > 18.5 && bMI <= 25 {
        answer = "You are normal weight."
    } else {
        answer = "You are underweight."
    }
    
    return "\(answer). Your BMI is \(roundedBMI)"
}

print (bodyMassCal(weight: 160, height: 6))
