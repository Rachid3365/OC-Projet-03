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
        
        
    }
    
    func descriptionCharacter() {
        print("")
        print("Name of Character: \(name)"
            + "Classe: \(classeOfCharacter)"
            + "Health: \(actualHealthPoints)/\(maxHealthPoints)"
            + "Damage: \(weapon.damage)"
            + "")
    }
}
