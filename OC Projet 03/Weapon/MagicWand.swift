//
//  MagicWand.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Create a MagicWand class to init the specifics damage healing parameters. Inherits from Weapon class
class MagicWand: Weapon {
    
    init() {
        super.init(damage: 0, healing: 15)
    }
}
