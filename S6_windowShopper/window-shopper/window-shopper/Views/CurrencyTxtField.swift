//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by minjoo on 2021/02/07.
//

import UIKit

class CurrencyTxtField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // 배경색 설정: Color Literal -> other : 시각적 선택
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        // 코너 라운드 각도
        layer.cornerRadius = 5.0
        // 가운데 정렬
        textAlignment = .center
        
        if placeholder == nil {
            placeholder = ""
        }
        
        let place = NSAttributedString(string: placeholder, attributes: [.foregroundColor: color.white])
        
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
