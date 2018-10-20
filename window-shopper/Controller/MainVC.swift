//
//  ViewController.swift
//  window-shopper
//
//  Created by User on 18/10/2018.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class MainVC: UIViewController {


    @IBOutlet weak var wageTxt: hourlywagetxt!
    @IBOutlet weak var priceTxt: hourlywagetxt!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }
    
    @objc func calculate() {
        
    }

}

