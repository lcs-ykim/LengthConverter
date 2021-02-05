//
//  main.swift
//  LengthConverter
//
//  Created by Yeseo Kim on 2021-02-04.
//

import Foundation

//INPUT
repeat {
    print("""
    1 - Milimetre
    2 - Centimetre
    3 - Metre
    4 - Kilometre
    5 - Inch
    6 - Foot
    7 - Yard
    8 - Mile
    9 - Quit program
    """)
    print("\n")
    let fromUnit = Double.collectInput(withPrompt: "Converting from: ", minimum: 1, maximum: 9)
    if fromUnit == 9 {
        break
    }
    print("\n")
    let toUnit = Double.collectInput(withPrompt: "Converting to: ", minimum: 1, maximum: 9)
    if toUnit == 9 {
        break
    }
    print("\n")
    let fromLength = Double.collectInput(withPrompt: "Length: ", minimum: 0, maximum: nil)
    print("\n")
    
    var fromUnit2 = ""
    switch fromUnit {
    case 1 :
        fromUnit2 += "mm"
    case 2 :
        fromUnit2 += "cm"
    case 3 :
        fromUnit2 += "m"
    case 4 :
        fromUnit2 += "km"
    case 5 :
        fromUnit2 += "in"
    case 6 :
        fromUnit2 += "ft"
    case 7 :
        fromUnit2 += "yd"
    case 8 :
        fromUnit2 += "mi"
    default:
        break
    } //Create fromUnit2 with corresponding symbols with fromUnit
    
    var toUnit2 = ""
    switch toUnit {
    case 1 :
        toUnit2 += "mm"
    case 2 :
        toUnit2 += "cm"
    case 3 :
        toUnit2 += "m"
    case 4 :
        toUnit2 += "km"
    case 5 :
        toUnit2 += "in"
    case 6 :
        toUnit2 += "ft"
    case 7 :
        toUnit2 += "yd"
    case 8 :
        toUnit2 += "mi"
    default:
        break
    } //Create toUnit2 with corresponding symbols with toUnit
    
    let response = String.collectInput(withPrompt: "You are converting \(fromLength) \(fromUnit2) to \(toUnit2). Press Y for approval and N for reset: ", acceptableValues: ["Y","N"] )
    if response == "N" {
        print("\n")
        continue
    }
    print("\n")
    
    //PROCESS & OUTPUT
    var toLength = 0.0
    let inchValue = toInch(Converting: fromLength, From: fromUnit)
        toLength = fromInch(Converting: inchValue, To: toUnit)
    
    print("\(fromLength) \(fromUnit2) is equal to \(toLength) \(toUnit2).")
    print("\n")
    
} while true
