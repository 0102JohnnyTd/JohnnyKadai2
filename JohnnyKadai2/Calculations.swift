//
//  Calculations.swift
//  JohnnyKadai2
//
//  Created by Johnny Toda on 2022/03/05.
//

import Foundation

struct Calculations {
    enum TypeOfCaluclation {
        case addition
        case subtraction
        case multiplication
        case division
    }

    static func fetchCalculationResult(typeOfCaluclation: TypeOfCaluclation, firstValue: Float, secondValue: Float) -> String {
        let sum: String

        switch typeOfCaluclation {
        case .addition:
            sum = String(firstValue + secondValue)

        case .subtraction:
            sum = String(firstValue - secondValue)

        case .multiplication:
            sum = String(firstValue * secondValue)

        case .division:
            guard secondValue != 0 else {
                return "割る数には0以外を入力してください"
            }
            sum = String(firstValue / secondValue)
        }
        return sum
    }
}