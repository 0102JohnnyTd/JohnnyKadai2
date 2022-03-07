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

        let typeOfCalculation: FetchCalculations.TypeOfCalculation

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
            fatalError("selectedSegmentIndexが異常")
        }

        calculationResultLabel.text = FetchCalculations.fetchCalculationResult(typeOfCalculation: typeOfCalculation, firstValue, secondValue)
    }

    @IBOutlet private weak var calculationResultLabel: UILabel!
}
