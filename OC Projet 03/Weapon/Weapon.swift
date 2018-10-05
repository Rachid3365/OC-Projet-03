//
//  Weapon.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Create a class to init the 2 different parameters we will need for weapons
class Weapon {
    
    var damage: Int
    // for the Magus only : Healing capacity
    var healing: Int
    
    init(damage: Int, healing: Int) {
        self.damage = damage
        self.healing = healing
    }
    
}
