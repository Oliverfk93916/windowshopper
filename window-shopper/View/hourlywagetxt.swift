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
        <#code#>
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
