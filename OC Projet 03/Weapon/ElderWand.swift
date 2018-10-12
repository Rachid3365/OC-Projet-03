//
//  ElderWand.swift
//  OC Projet 03
//
//  Created by Rachid C on 05/10/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Create a ElderWand class for this special weapon which can be given in the chest. Inherits from Weapon class
class ElderWand: Weapon {
    //to init the specifics damage healing parameters
    init() {
        super.init(damage: 0, healing: 30)
    }
}


