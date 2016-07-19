//
//  Enemy.swift
//  TwoPlayerGame
//
//  Created by Preeti Patel on 19/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    func dropLoot() -> String? {
        
        if isDead() {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        
        return nil
    }
}
