//
//  Magus.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Create a class Magus. Sets an inheritance from the class Character.
class Magus: Character {
    
    init(name: String, team: Player) {
        super.init(name: name, classeOfCharacter: "Magus", weapon: MagicWand(), actualHealthPoints: 100, maxHealthPoints: 100)
    }
    
    // Method to allow Magus to heal his allies
    func magusHeal(ally: Character) {
        
        // If the Ally isn't dead he can be healed
        if ally.actualHealthPoints > 0 {
            ally.actualHealthPoints += weapon.healing
        }
        // The HP amount must not exceed the max health points propriety
        if ally.actualHealthPoints > ally.maxHealthPoints {
            ally.actualHealthPoints = ally.maxHealthPoints
        }
    }
}
