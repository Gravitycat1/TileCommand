//
//  GameObject.swift
//  TileGame
//
//  Created by Isaacs Joshua on 4/9/18.
//  Copyright © 2018 Isaacs Joshua. All rights reserved.
//

import Foundation
import SpriteKit

class GameObject:SKSpriteNode {
    
    
    //inherits from skspritenode
    var image: String?
    var scale: float2?
    
    var target:CGPoint?
    
    
    
    init(imageNamed: String){
        
        let tex = SKTexture(imageNamed: imageNamed)
        
        super.init(texture: tex, color: UIColor.clear, size: tex.size())
    }
    
     func update(_ currentTime: TimeInterval) {
       //when you need an update
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
