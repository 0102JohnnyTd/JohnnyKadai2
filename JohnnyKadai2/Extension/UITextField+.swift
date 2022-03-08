//
//  UITextField.swift
//  JohnnyKadai2
//
//  Created by Johnny Toda on 2022/03/04.
//

import UIKit

extension UITextField {
    var textToFloat: Float {
        text.flatMap { Float($0) } ?? 0
    }
}



