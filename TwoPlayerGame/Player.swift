//
//  Player.swift
//  TwoPlayerGame
//
//  Created by Preeti Patel on 19/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        get {
            return _inventory
        }
        set {
            if !newValue.isEmpty {
               return _inventory.append(String(newValue))
            }
        }
    }
    
    
    
    func attackEnemy(attackPower: Int) {
        super.attemptAttack(attackPower)
    }
}