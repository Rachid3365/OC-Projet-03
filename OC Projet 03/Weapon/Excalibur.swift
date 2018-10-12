//
//  Excalibur.swift
//  OC Projet 03
//
//  Created by Rachid C on 05/10/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Create a Excalibur class for this special weapon which can be given in the chest. Inherits from Weapon class
class Excalibur : Weapon {
    // to init the specifics damage healing parameters
    init() {
        super.init(damage: 50, healing: 0)
    }
}

