//
//  Character.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Class to init the parameters which a character will need on the game
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
    
    // Method to remind and present a character description
    func descriptionCharacter() {
        print("")
        print("Name of the Character: ⭐︎  \(name)  ⭐︎"
            +  "  ▹ Classe: \(classeOfCharacter)   "
            +  "  ▹ Health: \(actualHealthPoints)/\(maxHealthPoints)    "
            +  "  ▹ Damage: \(weapon.damage)    "
            +  "  ▹ Healing: \(weapon.healing)"
            + "")
    }
    
    // Method in order to attack in order to reduce the target HP in order to win
    func attack(opponent: Character) {
        opponent.actualHealthPoints -= weapon.damage
        // After an attack, HP cannot go down 0. 0 means dead already.
        if opponent.actualHealthPoints < 0 {
            opponent.actualHealthPoints = 0
        }
    }
}
