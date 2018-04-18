//
//  GameViewController.swift
//  TileGame
//
//  Created by Isaacs Joshua on 4/6/18.
//  Copyright © 2018 Isaacs Joshua. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        
        
         let view = UIView()
        view.backgroundColor = .black
        view.sizeToFit()
        
        ///title
        let title = UILabel(frame: CGRect(x: 320, y: 200, width: 200, height: 100))
        title.text = "TILE COMMAND"
        title.textColor = .white
        view.addSubview(title)
        
        
            ///button
        let button = UIButton(frame: CGRect(x: 330, y: 800, width: 100, height: 50))
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("PLAY", for: .normal)
        button.addTarget(self, action: #selector(self.PlayGame), for: .touchUpInside)
        view.addSubview(button)
        
        self.view = view
    }
    
    @IBAction func PlayGame(){
        let scene = SKScene(fileNamed: "GameScene")
            // Set the scale mode to scale to fit the window
        let skView = SKView()
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene?.scaleMode = .aspectFill
        skView.presentScene(scene)
        self.view = skView
        
    }
    
    

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
