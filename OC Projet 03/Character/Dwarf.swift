//
//  Dwarf.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Set the Dwarf class : inherits from the class Character 
class Dwarf: Character {
    
    init(name: String, team: Player) {
        super.init(name: name, classeOfCharacter: "Dwarf", weapon: Axe(), actualHealthPoints: 80, maxHealthPoints: 80)
    }
    
}
