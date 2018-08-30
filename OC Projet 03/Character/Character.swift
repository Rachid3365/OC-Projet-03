//
//  Character.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

class Character {
    var name: String
    var classeOfCharacter: String
    var weapon: Weapon
    var maxHealthPoints: Int
    var actualHealthPoints: Int
    
 
    init(name: String, classeOfCharacter: String, weapon: Weapon, actualHealthPoints: Int, maxHealthPoints: Int) {
        self.name = name
        self.classeOfCharacter = classeOfCharacter
        self.weapon = weapon
        self.maxHealthPoints = maxHealthPoints
        self.actualHealthPoints = actualHealthPoints
        
        
    
    /*    switch self.classe {
        case .Warrior:
            self.weapon = Sword()
            self.maxHealthPoints = 100
        case .Dwarf:
            self.weapon = Axe()
            self.maxHealthPoints = 90
        case .Magus:
            self.weapon = MagicWand()
            self.maxHealthPoints = 100
        case .Colossus:
            self.weapon = BigShield()
            self.maxHealthPoints = 140
        }*/
    }
}
