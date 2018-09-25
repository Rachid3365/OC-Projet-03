//
//  GameRPG.swift
//  OC Projet 03
//
//  Created by Rachid C on 27/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

// Set the game class
class GameRPG {
    
    var playerArray = [Player]()
    var error = false
    var nameCharacters = ""
    var playerChoice = 0
    var nameTeamPlayer = ""
    
    ///////////////////////////
    //   MARK: Functions    //
    //////////////////////////
    
    // To Welcome and create their teams of characters
    func start() {
        print("""
            ================================================
            |                                              |
            |      WELCOME to the RPG Fighter Battle !     |
            |                                              |
            ================================================
        """)
        
        // Only 2 teams on the game with a choice of 3 characters each
        for i in 0..<2 {
            createTeamPlayer(index: i)
            createCharactersPlayer(index: i)
        }
        print("")
        print("Your two teams are complete and ready! Prepare for the Battle!")
        // Start the battle
        fight()
    }
    // To create team's player
    func createTeamPlayer(index: Int) {
        // To create a name which has to be unique
        repeat {
            if error == true {
                print("")
                print("--------------------------------------------------------------------------")
                print("The name you choose is already taken. It must be unique. Try another one.")
                print("--------------------------------------------------------------------------")
            } else {
                print("")
                print("---------------------------------------")
                print("Type the name of Player N° \(index + 1):")
                print("---------------------------------------")
            }
            nameTeamPlayer = inputString()
            error = false
            // For in Loop checking in the array if the name is already taken or available
            for t in playerArray {
                if t.name == nameTeamPlayer{
                    error = true
                }
            }
            // While loop performed until error becomes false -> no error from the user
        } while error == true
        playerArray.append(Player(name: nameTeamPlayer))
    }
    // In order to allow only Integer as input needed as an answer from the user
    func inputInt() -> Int {
        guard let data = readLine() else { return 0}
        guard let dataToInt = Int(data) else { return 0 }
        return dataToInt
    }
    // Function in order to create 3 characters per team
    func createCharactersPlayer(index: Int) {
        // For in loop will repeat 3 times per user -> 3 characters per team
        for i in 0..<3 {
            repeat{
                // if error from the user
                if error == true{
                    print("")
                    print("Please use the allowed keys as asked : 1 to 4")
                    // normal
                } else {
                    print("")
                    print("================================================================")
                    print("Please Choose a character n°\(i + 1) among this list:"
                        + "\n1. Warrior: A good attacker with his sword!"
                        + "\n2. Magus: His talent? Healing to support his companions!"
                        + "\n3. Colossus: Huge and resistant with his leagendary Shield"
                        + "\n4. Dwarf: With his Axe, A lot of damages have to be expected!")
                }
                playerChoice = inputInt()
                // To make sure the user uses the valid keys : 1, 2, 3, 4 as asked
                if playerChoice != 1 && playerChoice != 2 && playerChoice != 3 && playerChoice != 4 {
                    error = true
                } else {
                    error = false
                }
                // While loop performed until error becomes false -> no error from the user
            } while error == true
            createNameCharacter()
            addCharacter(index: index)
        }
    }
    // Function to create a name for each character chosen by the user
    func createNameCharacter() {
        repeat{
            if error == false {
                print("")
                print("==================================================================")
                print("Please choose and create an unique name for your chosen Character")
            } else {
                print("")
                print("=========================================================================")
                print("This name is already taken. Please create another one. It must be unique.")
            }
            nameCharacters = inputString()
            error = false
            uniqueNameCharacter()
            // While loop performed until error becomes false -> no error from the user
        } while error == true
    }
    // In order to allow only String as inputs needed as an answer from the user
    func inputString() -> String {
        guard let data = readLine() else { return "" }
        return data
    }
    // Method to make sure the character name is unique
    func uniqueNameCharacter() {
        // -> rappeler error = false ? test---------------------------------------------> !!!!!!!!!!!!!!!!!
        for p in playerArray {
            // For loop to check in the array if the name is already taken
            for c in p.characterArray {
                if c.name == nameCharacters {
                    error = true
                }
            }
        }
    }
    // Method to add the chosen character to the user's team
    func addCharacter(index: Int) {
        switch playerChoice {
        case 1:
            let warrior = Warrior(name: nameCharacters, team: playerArray[index])
            playerArray[index].characterArray.append(warrior)
        case 2:
            let magus = Magus(name: nameCharacters, team: playerArray[index])
            playerArray[index].characterArray.append(magus)
        case 3:
            let colossus = Colossus(name: nameCharacters, team: playerArray[index])
            playerArray[index].characterArray.append(colossus)
        case 4:
            let dwarf = Dwarf(name: nameCharacters, team: playerArray[index])
            playerArray[index].characterArray.append(dwarf)
        default:
            break
        }
    }
    // Method created to set up the fight : included attacks and heals
    func fight() {
        var characterSelected: Character
        var targetSelected: Character
        
        // Number of completed turns
        var turn: Int = 0
        // total of dead character in team 1
        var totalDeadPlayerTeam1: Int = 0
        // total of dead character in team 2
        var totalDeadPlayerTeam2: Int = 0
        repeat {
            // For Loop of 2 for the 2 players
            for i in 0..<2 {
                print("")
                print("=============================")
                print("Your turn to play has come!")
                print("=============================")
                // CALL of characterSelected method to select a character to do your turn with
                characterSelected = characterSelection(player: playerArray[i])
                // FIRST, Exception if the character is a MAGUS ---->>> HEAL AN ALLY.
                if let magus = characterSelected as? Magus {
                    print("")
                    print("================================================")
                    print("Which one of your allies do you want to heal ?")
                    print("================================================")
                    targetSelected = characterSelection(player: playerArray[i])
                    print("Please use keys 1 or 2 or 3, to make your choice: ")
                    magus.magusHeal(ally: targetSelected)
                    print("")
                    print("(\(magus.name) has just healed \(targetSelected.name)"
                        +   "He has now \(targetSelected.actualHealthPoints) HP thanks to you!")
                }
                    // SECOND, Except the magus, the selected CHARACTER will ATTACK HIS TARGET
                else {
                    print("")
                    print("==============================================================")
                    print("Which one of your opponent's character do you want to attack?")
                    print("==============================================================")
                    print("")
                    if i == 0 {
                        targetSelected = characterSelection(player: playerArray[i + 1])
                        print("")
                        print("Please use keys 1 or 2 or 3, to make your choice: ")
                        characterSelected.attack(opponent: targetSelected)
                        
                        death(characterSelected: characterSelected, targetSelected: targetSelected)
                        totalDeadPlayerTeam2 += 1
                    } else {
                        targetSelected = characterSelection(player: playerArray[i - 1])
                        print("")
                        print("Please use keys 1 or 2 or 3, to make your choice: ")
                        characterSelected.attack(opponent: targetSelected)
                        
                        death(characterSelected: characterSelected, targetSelected: targetSelected)
                        totalDeadPlayerTeam1 += 1
                    }
                }
                // In order to count each completed tour
                turn += 1
            }
        } while totalDeadPlayerTeam1 != 3 && totalDeadPlayerTeam2 != 3
        
        // To check who's gonna be the champion of this Fight
        var champion = ""
        if totalDeadPlayerTeam1 == 3 {
            champion = playerArray[1].name
        } else if totalDeadPlayerTeam2 == 3 {
            champion = playerArray[0].name
        }
        print("")
        print("""
            ============================================================================
            |                                                                          |
            |                             CONGRATULATIONS !!                           |
            |                                                                          |
            |      \(champion), You've just WON this epic fight in \(turn) turns!     |
            ============================================================================
            
            """)
    }
    
    // Method created in order to acknowledge the attack result and the death if so
    func death(characterSelected: Character, targetSelected: Character) {
        print("")
        print("\(characterSelected.name) has just attacked \(targetSelected.name) !")
        
        if targetSelected.actualHealthPoints <= 0 {
            targetSelected.actualHealthPoints = 0
            print("")
            print("Due to your severe Attack \(targetSelected.name) is dead !")
        } else {
            print("")
            print("Due to your attack, \(targetSelected.name) has only \(targetSelected.actualHealthPoints) HP remained !")
        }
    }
    
    // DECLARATION of a method in order to pick a character
    func characterSelection(player: Player) -> Character {
        player.playerTeamDescription()
        print("")
        print("=============================================================")
        print("Which one of your character do you want to use in this tour? ")
        print("=============================================================")
        print("")
        repeat {
            playerChoice = inputInt()
            // To make sure the user uses the valid keys : 1, 2, 3 as asked
            if playerChoice != 1 && playerChoice != 2 && playerChoice != 3 {
                error = true
                print("")
                print("Please use the allowed keys as asked : 1 to 3")
            } else if player.characterArray[playerChoice - 1].actualHealthPoints <= 0 {
                error = true
                print("")
                print("You cannot choose a character already dead.")
            } else {
                error = false
            }
        } while error == true
        return player.characterArray[playerChoice - 1]
    }
}


