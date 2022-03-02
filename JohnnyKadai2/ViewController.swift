//
//  ViewController.swift
//  JohnnyKadai2
//
//  Created by Johnny Toda on 2022/03/02.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak  var firstValueTextField: UITextField!

    @IBOutlet private weak  var secondValueTextField: UITextField!

    @IBOutlet private weak  var segmentedControl: UISegmentedControl!

    @IBAction private func caluclateButton(_ sender: Any) {
    }
    
    @IBOutlet private weak  var caluculationResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
