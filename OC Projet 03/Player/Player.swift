//
//  Player.swift
//  OC Projet 03
//
//  Created by Rachid C on 27/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

class Player {  // Create a class for player's parameters 
    
    var characterArray = [Character]()
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    // Method to create a description and to show it to the players with a print and to invit the player 1 to play
    func playerTeamDescription() {
        print("")
        print("                         Name of the Player: 🛡  \(name)  🛡")
        
        for character in characterArray {
            character.descriptionCharacter()
        }
    }
}

