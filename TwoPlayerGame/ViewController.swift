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
    
    
    @IBAction func onEnemyAttackBtnPressed(sender: UIButton) {
    }
    
    @IBAction func onPlayerAttackBtnPressed(sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(HP: 100, attackPower: 20, name: "Vandan")
        enemy = Enemy(HP: 150, attackPower: 25, name: "Tamraj Kilvish")
        playerHPLabel.text = "\(player.hp) HP"
        enemyHPLabel.text = "\(enemy.hp) HP"
    }

}

