//
//  Player.swift
//  OC Projet 03
//
//  Created by Rachid C on 27/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

class Player {
    
    var characterArray = [Character]()
    let name: String
    
    init(name: String) {
        self.name = name
    }
    func playerTeamDescription() {
        print("")
        print("name of Player: \(name)")
        
        for character in characterArray {
            character.descriptionCharacter()
        }
    }
}

