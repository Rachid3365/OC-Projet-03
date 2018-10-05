//
//  Warrior.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Create a class Warrior. Sets an inheritance from the class Character.
class Warrior: Character {
    
    init(name: String, team: Player) {
        super.init(name: name, classeOfCharacter: "Warrior", weapon: Sword(), actualHealthPoints: 100, maxHealthPoints: 100)
    }

 }
