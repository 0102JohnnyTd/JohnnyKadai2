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

    @IBAction private func valueChanged(_ sender: Any) {
    }

    @IBAction private func caluclateButton(_ sender: Any) {
        if segmentedControl.selectedSegmentIndex == 0 {
            fetchCalculationResult(typeOfCaluclation: .addition)
        } else if segmentedControl.selectedSegmentIndex == 1 {
            fetchCalculationResult(typeOfCaluclation: .subtraction)
        } else if segmentedControl.selectedSegmentIndex == 2 {
            fetchCalculationResult(typeOfCaluclation: .multiplication)
        } else {
            fetchCalculationResult(typeOfCaluclation: .division)
        }
    }
    @IBOutlet private weak var calculationResultLabel: UILabel!

    private func fetchCalculationResult(typeOfCaluclation: TypeOfCaluclation) {
        let firstValue = firstValueTextField.textToInt
        let secondValue = secondValueTextField.textToInt

        switch typeOfCaluclation {
        case .addition:
            calculationResultLabel.text =  String(firstValue + secondValue)

        case .subtraction:
            calculationResultLabel.text = String(firstValue - secondValue)

        case .multiplication:
            calculationResultLabel.text = String(firstValue * secondValue)

        case .division:
            guard secondValue != 0 else {
                return calculationResultLabel.text = "割る数には0以外を入力してください"
            }
            calculationResultLabel.text = String(firstValue / secondValue)
        }
    }

    enum TypeOfCaluclation {
        case addition
        case subtraction
        case multiplication
        case division
    }
}
