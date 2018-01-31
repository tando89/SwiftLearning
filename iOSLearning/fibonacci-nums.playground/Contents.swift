//: Playground - noun: a place where people can play

import UIKit

func fibonacci(_ until : Int) {
    print(0)
    print(1)
    
    var num1 = 0
    var num2 = 1
    
    for _ in 0...until {
        let num = num1 + num2
        print(num)
        
        num1 = num2
        num2 = num
    }
    
    
}
fibonacci(20)
