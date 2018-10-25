//
//  hourlywagetxt.swift
//  window-shopper
//
//  Created by User on 19/10/2018.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

@IBDesignable

class hourlywagetxt: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7227355647, green: 0.7227355647, blue: 0.7227355647, alpha: 0.8534353596)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.1979163265, green: 0.2142883317, blue: 0.2380727885, alpha: 1)
        currencyLbl.layer.cornerRadius = 15
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        customizeView()
        }
    
        
        func customizeView(){
            super.awakeFromNib()
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
            layer.cornerRadius = 15
            textAlignment = .center
            clipsToBounds = true
            
            
            if let p = placeholder {
                let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
