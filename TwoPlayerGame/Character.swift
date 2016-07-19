//
//  Character.swift
//  TwoPlayerGame
//
//  Created by Preeti Patel on 19/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import Foundation

class Character {
    
    private var _HP: Int!
    private var _attackPower: Int!
    private var _name: String!
    
    init(HP: Int, attackPower: Int, name: String) {
        self._HP = HP
        self._attackPower = attackPower
        self._name = name
    }
    
    var hp: Int {
        get {
            return _HP
        }
        set {
            if newValue >= 0 {
                _HP = newValue
            }
        }
    }
    
    var attackPower: Int {
        get {
            return _attackPower
        }
        set {
            if newValue >= 0 {
                _attackPower = newValue
            }
        }
    }
    
    var name: String {
        get {
            return _name
        }
        set {
            if !newValue.isEmpty {
                _name = newValue
            }
        }
    }
    
    func attemptAttack(attackPower: Int!) -> Bool {
        if _HP! > 0 {
            _HP = _HP - attackPower
            return true
        }
        else {
            return false
        }
    }
    
    func isDead() -> Bool {
        if _HP <= 0 {
            return true
        }
        else {
            return false
        }
    }
    
}
