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

        let calculationArray = [String(firstValue + secondValue),
                                String(firstValue - secondValue),
                                String(firstValue * secondValue),
                                divisionValue(firstValue: firstValue, secondValue: secondValue)
        ]

        calculationResultLabel.text = calculationArray[segmentedControl.selectedSegmentIndex]
    }

    private func divisionValue(firstValue: Float, secondValue: Float) -> String {
        guard !secondValue.isZero else {
            return "割る数には0以外を入力してください"
        }
        return String(firstValue / secondValue)
    }

    @IBOutlet private weak var calculationResultLabel: UILabel!
}
