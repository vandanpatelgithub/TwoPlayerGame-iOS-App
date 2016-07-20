//
//  ViewController.swift
//  TwoPlayerGame
//
//  Created by Preeti Patel on 19/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player: Player!
    var enemy: Enemy!
    
    @IBOutlet weak var textHolderLbl: UILabel!
    
    @IBOutlet weak var enemyHPLabel: UILabel!
    
    @IBOutlet weak var playerHPLabel: UILabel!
    
    @IBOutlet weak var enemyAttackBtn: UIButton!
    
    @IBOutlet weak var playerAttackBtn: UILabel!
    
    @IBOutlet weak var enemyAttackBtnTxt: UILabel!
    
    @IBOutlet weak var playerAttackBtnTxt: UILabel!
    
    @IBOutlet weak var restartButton: UIButton!
    
    @IBAction func onRestartBtnPressed(sender: UIButton) {
        restartButton.hidden = true
        viewDidLoad()
    }
    @IBAction func onEnemyAttackBtnPressed(sender: UIButton) {
        
        if player.attemptAttack(enemy.attackPower) {
            
            if player.hp > 0 {
                playerHPLabel.text = "\(player.hp) HP"
                textHolderLbl.text = "\(enemy.name) attacked \(player.name)! Attack Power: \(enemy.attackPower)"
            }
            else {
                deadCharacter(player)
            }
        }
    }
    
    @IBAction func onPlayerAttackBtnPressed(sender: UIButton) {
        if enemy.attemptAttack(player.attackPower) {
            
            if enemy.hp > 0 {
                enemyHPLabel.text = "\(enemy.hp) HP"
                textHolderLbl.text = "\(player.name) attacked \(enemy.name)! Attack Power: \(player.attackPower)"
            } else {
                deadCharacter(enemy)
            }
        }
    }
    
    func deadCharacter(character: Character) {
        if character is Player {
            playerHPLabel.text = "DEAD"
            playerAttackBtnTxt.text = ""
            playerAttackBtn.hidden = true
            textHolderLbl.text = "\(player.name) Dead. \(enemy.name) Won!"
            restartGame()
        } else {
            enemyHPLabel.text = "DEAD"
            enemyAttackBtnTxt.text = ""
            enemyAttackBtn.hidden = true
            textHolderLbl.text = "\(enemy.name) Dead. \(player.name) Won!"
            restartGame()
        }
    }
    
    func restartGame() {
        
        restartButton.hidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(HP: 100, attackPower: 20, name: "Vandan")
        enemy = Enemy(HP: 150, attackPower: 25, name: "Tamraj Kilvish")
        playerHPLabel.text = "\(player.hp) HP"
        enemyHPLabel.text = "\(enemy.hp) HP"
        enemyAttackBtn.hidden = false
        enemyAttackBtnTxt.text = "Attack"
        playerAttackBtn.hidden = false
        playerAttackBtnTxt.text = "Attack"
    }
    
}

