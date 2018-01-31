import UIKit

//let solidNumber : Int = 20
//
//let solidNumber2 = solidNumber / 2
//
//let myName : String = "Tan"
//
//let myNameIn5Years = "Still \(myName)"
//
//let myInfo = "My name is \(myName) my age is \(solidNumber)"
//
//print(myInfo)

//func getMilk() {
//    print("get money")
//}
//
//getMilk()
//parameter is like an input
/*func getMilk(howManyMilkBottles : Int) {
    print("get money")
    print("buy \(howManyMilkBottles) of milks")
    let priceToPay = howManyMilkBottles * 2
    print("You have to pay $\(priceToPay)")
    
    
}

getMilk(howManyMilkBottles: 5)*/
func getMilk(howManyMilkBottles : Int, howMuchMoneyWasGiven: Int) -> Int{
    print("get money")
    print("buy \(howManyMilkBottles) of milks")
    let priceToPay = howManyMilkBottles * 2
    print("You have to pay $\(priceToPay)")
    let change = howMuchMoneyWasGiven - priceToPay
    
    return change
}

var amountOfChange = getMilk(howManyMilkBottles: 5, howMuchMoneyWasGiven: 100)
print("Hello here is your change: $\(amountOfChange)")
