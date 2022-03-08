//
//  ViewController.swift
//  JohnnyKadai2
//
//  Created by Johnny Toda on 2022/03/02.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var firstValueTextField: UITextField!

    @IBOutlet private weak var secondValueTextField: UITextField!

    @IBOutlet private weak var segmentedControl: UISegmentedControl!

    @IBAction private func caluclateButton(_ sender: Any) {
        let firstValue = firstValueTextField.textToFloat
        let secondValue = secondValueTextField.textToFloat

        // FetchCalculations構造体の列挙型を型として指定する
        // Switch文のcaseに応じてenumが持つcaseを指定することができる
        let typeOfCalculation: FetchCalculations.TypeOfCalculation

        // guard文ではなくswitch文で条件分岐する
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            typeOfCalculation = .addition
        case 1:
            typeOfCalculation = .subtraction
        case 2:
            typeOfCalculation = .multiplication
        case 3:
            typeOfCalculation = .division
        default:
            fatalError("エラーが発生しました")
        }
        // 引数の値のtypeOfCalculationには上記のswitchに該当するtypeが入る。
        // よってfetchCalculationResult()の呼び出しが一度で済む
        calculationResultLabel.text = FetchCalculations.fetchCalculationResult(typeOfCalculation: typeOfCalculation, firstValue, secondValue)
    }

    @IBOutlet private weak var calculationResultLabel: UILabel!
}
