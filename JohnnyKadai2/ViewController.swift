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
        let firstValue = firstValueTextField.textToFloat
        let secondValue = secondValueTextField.textToFloat

        if segmentedControl.selectedSegmentIndex == 0 {
            calculationResultLabel.text = Calculations.fetchCalculationResult(typeOfCaluclation: .addition, firstValue: firstValue, secondValue: secondValue)
        } else if segmentedControl.selectedSegmentIndex == 1 {
            calculationResultLabel.text = Calculations.fetchCalculationResult(typeOfCaluclation: .subtraction, firstValue: firstValue, secondValue: secondValue)
        } else if segmentedControl.selectedSegmentIndex == 2 {
            calculationResultLabel.text = Calculations.fetchCalculationResult(typeOfCaluclation: .multiplication, firstValue: firstValue, secondValue: secondValue)
        } else {
            calculationResultLabel.text = Calculations.fetchCalculationResult(typeOfCaluclation: .division, firstValue: firstValue, secondValue: secondValue)
        }
    }
    @IBOutlet private weak var calculationResultLabel: UILabel!
}
