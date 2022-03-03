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
            addition()
        } else if segmentedControl.selectedSegmentIndex == 1 {
            subtraction()
        } else if segmentedControl.selectedSegmentIndex == 2 {
            multiplication()
        } else {
            division()
        }
    }

    private func addition() {
       let firstValue = firstValueTextField.textToInt
       let secondValue = secondValueTextField.textToInt

        calculationResultLabel.text =  String(firstValue + secondValue)
    }

    private func subtraction() {
        let firstValue = firstValueTextField.textToInt
        let secondValue = secondValueTextField.textToInt

       calculationResultLabel.text = String(firstValue - secondValue)
    }

    private func multiplication() {
        let firstValue = firstValueTextField.textToInt
        let secondValue = secondValueTextField.textToInt

       calculationResultLabel.text = String(firstValue * secondValue)
    }

    private func division() {
        let firstValue = firstValueTextField.textToInt
        let secondValue = secondValueTextField.textToInt

        if secondValue == 0 {
            calculationResultLabel.text = "割る数には0以外を入力してください"
        } else {
            calculationResultLabel.text = String(firstValue / secondValue)
        }
    }


    
    @IBOutlet private weak var calculationResultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension UITextField {
    var textToInt: Int {
        text.flatMap { Int($0) } ?? 0
    }
}
