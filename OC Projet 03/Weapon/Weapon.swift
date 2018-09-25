//
//  Weapon.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

class Weapon { // Create a class to init the 2 different parameters we will need for weapons
    var damage: Int
    var healing: Int    // for the Magus only
    
    init(damage: Int, healing: Int) {
        self.damage = damage
        self.healing = healing
    }
    
}
