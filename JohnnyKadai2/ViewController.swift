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
        let firstValue = firstValueTextField.textToInt
        let secondValue = secondValueTextField.textToInt

        if segmentedControl.selectedSegmentIndex == 0 {
            calculationResultLabel.text =  String(firstValue + secondValue)
        } else if segmentedControl.selectedSegmentIndex == 1 {
            calculationResultLabel.text = String(firstValue - secondValue)
        } else if segmentedControl.selectedSegmentIndex == 2 {
            calculationResultLabel.text = String(firstValue * secondValue)
        } else {
            if secondValue == 0 {
                calculationResultLabel.text = "割る数には0以外を入力してください"
            } else {
                calculationResultLabel.text = String(firstValue / secondValue)
            }
        }
    }

    @IBOutlet private weak var calculationResultLabel: UILabel!
}


