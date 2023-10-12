//
//  GameViewController.swift
//  Commotion
//
//  Created by Eric Larson on 9/6/16.
//  Copyright © 2016 Eric Larson. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    lazy var gameScene = {
        return GameScene(size: view.bounds.size)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //setup game scene
        let scene = self.gameScene
        let skView = view as! SKView // the view in storyboard must be an SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
    }

    
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    
    @IBAction func shortMove(_ sender: UIButton) {
        moveBlock(button: sender)
    }
    
    
    func moveBlock (button sender: UIButton ){
        switch sender.titleLabel?.text {
        case "➡️":
            gameScene.moveBlock(by: 20)
        default:
            gameScene.moveBlock(by: -20)
        }
    }
    
}
