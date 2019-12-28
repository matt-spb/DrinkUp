//
//  DataInfo.swift
//  DrinkUp
//
//  Created by macbook on 17/12/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import Foundation

struct InfoData {
    var drinkSrength: Double = 0
    var bottleVolume: Double = 0
    var amountOfBottles: UInt = 0
    var genderFactor: Double = 0
    var weight: UInt = 0
    var result: String {
        return String(drinkSrength * bottleVolume * Double(amountOfBottles) * Double(weight) / genderFactor)
    }
}
