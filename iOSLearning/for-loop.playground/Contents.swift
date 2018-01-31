//: Playground - noun: a place where people can play

import UIKit

//let arrayNum = [1,3,5,7,3,78,8,87,86,6,56]
//var sum = 0
//for number in arrayNum {
//    sum += number
//
//}
////final sum after looping thru the array
//print(sum)
//print all even nums from 0 - 10
//for number in 1...10 where number % 2 == 0{
//    print(number)
//}
func beerSong(_ beerBottles: Int) -> String {
    var lyrics: String = ""
    
    for number in (1...beerBottles).reversed() {
        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
        lyrics += newLine
    }
    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
    return lyrics
}
print(beerSong(99))

/*
 //This one without the DASH on the parameter
 func beerSong(beerBottles: Int) -> String {
 var lyrics: String = ""
 
 for number in (1...beerBottles).reversed() {
 let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
 lyrics += newLine
 }
 lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
 return lyrics
 }
 //when call have to write the name of the parameter.
 print(beerSong(beerBottles: 99))
 */
