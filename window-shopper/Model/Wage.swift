//
//  Wage.swift
//  window-shopper
//
//  Created by User on 24/10/2018.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
