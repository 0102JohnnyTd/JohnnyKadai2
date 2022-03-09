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

        guard let typeOfCalculation = FetchCalculations.TypeOfCalculation(rawValue: segmentedControl.selectedSegmentIndex) else {
            fatalError("エラーが発生しました")
        }
        // 引数の値のtypeOfCalculationには上記のsegmentedControlに該当するtypeが入る。
        // よってfetchCalculationResult()の呼び出しが一度で済む
        calculationResultLabel.text = FetchCalculations.fetchCalculationResult(typeOfCalculation: typeOfCalculation, firstValue, secondValue)
    }

    @IBOutlet private weak var calculationResultLabel: UILabel!
}
