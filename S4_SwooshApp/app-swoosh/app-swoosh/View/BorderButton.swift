//
//  BorderButton.swift
//  app-swoosh
//
//  Created by minjoo on 2021/01/19.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor =
            UIColor.white.cgColor
    }
}
