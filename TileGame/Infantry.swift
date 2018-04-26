//
//  Infantry.swift
//  TileGame
//
//  Created by Isaacs Joshua on 4/25/18.
//  Copyright © 2018 Isaacs Joshua. All rights reserved.
//

import Foundation
import SpriteKit

class Infantry:Unit{
    
    private var infantry = SKSpriteNode()
    private var IntWalkFrames: [SKTexture] = []
    
    override init(){
        super.init()
        moveRange = 2
        attackRange = 2
        print("creating")
        
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildInt(){
        print("building")
        let IntAnimatedAtlas = SKTextureAtlas(named:"Infantry")
        var walkFrames: [SKTexture] = []
        
        let numImages = IntAnimatedAtlas.textureNames.count
        for i in 0...numImages{
            let IntTextureName = "Infantry_\(i-1)"
            walkFrames.append(IntAnimatedAtlas.textureNamed(IntTextureName))
        }
        IntWalkFrames = walkFrames
        
        let firstFrameTexture = IntWalkFrames[0]
        infantry = SKSpriteNode(texture:firstFrameTexture)
        infantry.position = CGPoint(x: frame.midX, y:frame.midY)
        addChild(infantry)
    }
    func animate() {
        print("anim")
        infantry.run(SKAction.repeatForever(SKAction.animate(with: IntWalkFrames,
                                                             timePerFrame: 0.1,
                                                             resize:false,
                                                             restore:true)),
                     withKey: "InfantryMarch")
    }
}
