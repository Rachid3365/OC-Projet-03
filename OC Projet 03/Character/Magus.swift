//
//  Magus.swift
//  OC Projet 03
//
//  Created by Rachid C on 22/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

class Magus: Character {
    
   init(name: String, team: Player) {
        super.init(name: name, classeOfCharacter: "Magus", weapon: MagicWand(), actualHealthPoints: 100, maxHealthPoints: 100)
 }

}
