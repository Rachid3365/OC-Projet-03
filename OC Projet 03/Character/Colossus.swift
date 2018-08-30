//
//  Colossus.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

class Colossus: Character {
    
    init(name: String, team: Player) {
        super.init(name: name, classeOfCharacter: "Colossus", weapon: BigShield(), actualHealthPoints: 140, maxHealthPoints: 140)
    }
    
}

