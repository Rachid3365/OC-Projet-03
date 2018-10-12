//
//  Player.swift
//  OC Projet 03
//
//  Created by Rachid C on 27/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Create a class for Player's parameters
class Player {
    // Create an Array for Characters
    var characterArray = [Character]()
    let name: String
    // To init the name parameter
    init(name: String) {
        self.name = name
    }
    
    // Method to create a description and to show it to the players with a print and to invite the player to play
    func playerTeamDescription() {
        print("")
        print("                         Name of the Player: 🛡  \(name)  🛡")
        
        // For Loop to call descriptionCharacter function for each index of characterArray
        for character in characterArray {
            character.descriptionCharacter()
        }
    }
}

