//
//  Menu.swift
//  TileGame
//
//  Created by Isaacs Joshua on 4/12/18.
//  Copyright © 2018 Isaacs Joshua. All rights reserved.
//


import SpriteKit
import GameplayKit

class Menu: SKScene{
    
    var PlayButton:SKShapeNode = SKShapeNode()
    
    override func didMove(to view: SKView) {
        
        
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
       
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
