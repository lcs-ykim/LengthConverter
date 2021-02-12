//
//  functions.swift
//  LengthConverter
//
//  Created by Yeseo Kim on 2021-02-04.
//

import Foundation

//FUNCTIONS
func toInch(Converting fromLength: Double, From fromUnit: LengthUnit) -> Double {
    var toLength = 0.0
    switch fromUnit {
    case .milimeter :
        toLength = fromLength / 25.4
    case .centimeter :
        toLength = fromLength / 2.54
    case .meter :
        toLength = fromLength * 39.37
    case .kilometer :
        toLength = fromLength * 39370
    case .inch :
        toLength = fromLength
    case .feet :
        toLength = fromLength * 12
    case .yard :
        toLength = fromLength * 36
    case .mile :
        toLength = fromLength * 63360
    }
    return toLength
}

func fromInch(Converting fromLength: Double, To toUnit: LengthUnit) -> String {
    var toLength = 0.0
    switch toUnit {
    case .milimeter :
        toLength = fromLength * 25.4
    case .centimeter :
        toLength = fromLength * 2.54
    case .meter :
        toLength = fromLength / 39.37
    case .kilometer :
        toLength = fromLength / 39370
    case .inch :
        toLength = fromLength
    case .feet :
        toLength = fromLength / 12
    case .yard :
        toLength = fromLength / 36
    case .mile :
        toLength = fromLength / 63360
    }
    return String(toLength)
} //Identical with 'toInch' but only operators reversed (multiplication to division and vice versa)

func convert(fromLength: Double, fromUnit: LengthUnit, toUnit: LengthUnit) -> String {
    let inchValue = toInch(Converting: fromLength, From: fromUnit)
    let result = fromInch(Converting: inchValue, To: toUnit)
    return result
}

