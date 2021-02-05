//
//  functions.swift
//  LengthConverter
//
//  Created by Yeseo Kim on 2021-02-04.
//

import Foundation

//FUNCTIONS
func toInch(Converting fromLength: Double, From fromUnit: Double) -> Double {
    var toLength = 0.0
    switch fromUnit {
    case 1 :
        toLength = fromLength / 25.4
    case 2 :
        toLength = fromLength / 2.54
    case 3 :
        toLength = fromLength * 39.37
    case 4 :
        toLength = fromLength * 39370
    case 5 :
        toLength = fromLength
    case 6 :
        toLength = fromLength * 12
    case 7 :
        toLength = fromLength * 36
    case 8 :
        toLength = fromLength * 63360
    default :
        break
    }
    return toLength
}

func fromInch(Converting fromLength: Double, To toUnit: Double) -> Double {
    var toLength = 0.0
    switch toUnit {
    case 1 :
        toLength = fromLength * 25.4
    case 2 :
        toLength = fromLength * 2.54
    case 3 :
        toLength = fromLength / 39.37
    case 4 :
        toLength = fromLength / 39370
    case 5 :
        toLength = fromLength
    case 6 :
        toLength = fromLength / 12
    case 7 :
        toLength = fromLength / 36
    case 8 :
        toLength = fromLength / 63360
    default :
        break
    }
    return toLength
} //Identical with 'toInch' but only operators reversed (multiplication to division and vice versa)

