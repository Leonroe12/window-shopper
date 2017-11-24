//
//  currencyBtn.swift
//  window-shopper
//
//  Created by Leon Roe on 23/11/2017.
//  Copyright © 2017 Devroe. All rights reserved.
//

import UIKit

@IBDesignable       // Enabes the class to be implemented in the Interface builder also

class currencyBtn: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20          // CGFloat for drawing, cant be a doubl
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current             // get local data relative to the user
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {  // Enabes the class to be implemented in the Interface builder also - any code that changes interface builder programatically, need to be put in here.
        customiseView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseView()
    }
    
    func customiseView() {          // Programmatically set the class of the button
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {         // placeholder is a property of the text field
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])      // if p = nil then code wont run
            attributedPlaceholder = place           // overrides placeholder
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
