//
//  GameRPG.swift
//  OC Projet 03
//
//  Created by Rachid C on 27/08/2018.
//  Copyright © 2018 Rachid Chakir. All rights reserved.
//

import Foundation

class GameRPG {
    var playerArray = [Player]()
    var error = false
    var nameCharacters = ""
    var playerChoice = 0
    
    func start() {
        print("----------------------------")
        print("Welcome to the RPG Fighter Battle!")
        print("----------------------------")
        print("")
        
        for i in 0..<2 {
            createCharactersPlayer(index: i)
        }
        
    }
    func inputInt() -> Int {
        let stringData = readLine();
        
        return Int(stringData!)!
    }
    
    
    func createCharactersPlayer(index: Int) {
        
        
        for i in 0..<3 {
            repeat{
                if error == true{
                    print("Please use the keys as asked : 1 to 4")
                    
                } else {
                    print("Please Choose a character n°\(i + 1) among this list:"
                        + "\n1. Warrior: A good attacker with his sword!"
                        + "\n2. Magus: His talent? Healing to support his companions!"
                        + "\n3. Colossus: Huge and resistant with his leagendary Shield"
                        + "\n4. Dwarf: With his Axe, A lot of damages have to be expected!")
                }
                
                playerChoice = inputInt()
                if playerChoice != 1 && playerChoice != 2 && playerChoice != 3 && playerChoice != 4 {
                   error = true
                   
                } else {
                   error = false
                    
                }
               
                
            } while error == true
        createNameCharacter()
            
        addCharacter(index: index)
        }
        
    }
    func createNameCharacter() {
        
        repeat{
            if error == false {
                print("Please choose and create an unique name for your choosen Character")
            } else {
                print("The name you choose is already taken. Please create another one.")
            }
            nameCharacters = inputString()
            error = false
            uniqueNameCharacter()
            
        } while error == true
    }
    
    func inputString() -> String {
        let stringData = readLine();
        
        return stringData!
    }
    func uniqueNameCharacter() {
        for p in playerArray {
            for c in p.characterArray {
                if c.name == nameCharacters {
                    error = true
                }
            }
        }
    }
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
}

