//
//  wage.swift
//  window-shopper
//
//  Created by Leon Roe on 23/11/2017.
//  Copyright © 2017 Devroe. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, forPrice price: Double) -> Int {          // forWage wage: - forwage names the wage
        return Int(ceil(price / wage))      // round up 
    }
}
