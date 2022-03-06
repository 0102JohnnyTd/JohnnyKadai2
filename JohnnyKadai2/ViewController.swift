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

        guard segmentedControl.selectedSegmentIndex != 0 else {
            return calculationResultLabel.text = Calculations.fetchCalculationResult(typeOfCalculation: .addition, firstValue, secondValue)
        }
        guard segmentedControl.selectedSegmentIndex != 1 else {
            return calculationResultLabel.text = Calculations.fetchCalculationResult(typeOfCalculation: .subtraction, firstValue, secondValue)
        }
        guard segmentedControl.selectedSegmentIndex != 2 else {
            return  calculationResultLabel.text = Calculations.fetchCalculationResult(typeOfCalculation: .multiplication, firstValue, secondValue)
        }
        guard segmentedControl.selectedSegmentIndex != 3 else {
            return calculationResultLabel.text = Calculations.fetchCalculationResult(typeOfCalculation: .division, firstValue, secondValue)
        }
        return
    }

    @IBOutlet private weak var calculationResultLabel: UILabel!
}
