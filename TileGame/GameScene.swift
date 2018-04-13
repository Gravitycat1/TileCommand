//
//  GameScene.swift
//  TileGame
//
//  Created by Isaacs Joshua on 4/6/18.
//  Copyright © 2018 Isaacs Joshua. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
   
    
    var groundTileMapNode:SKTileMapNode = SKTileMapNode()
    var sandTileMapNode:SKTileMapNode = SKTileMapNode()
    var waterTileMapNode:SKTileMapNode = SKTileMapNode()
    
    

    override func didMove(to view: SKView) {
        
        for node in self.children {
            if (node.name == "ground"){
                groundTileMapNode = node as! SKTileMapNode
            }
            else if (node.name == "sand"){
                sandTileMapNode = node as! SKTileMapNode
            }
            else if (node.name == "water"){
                waterTileMapNode = node as! SKTileMapNode
            }
        }
        
        for col in 0..<sandTileMapNode.numberOfColumns {
            for row in 0..<sandTileMapNode.numberOfRows {
                //do something
                let tileBoolData = sandTileMapNode.tileDefinition(atColumn: col, row: row)?.userData?["isCenter"] as? Bool
                
                if (tileBoolData == true){
                    print("sand pathfound: ", col, row)
                }
            }
        }
        
        for col in 0..<groundTileMapNode.numberOfColumns {
            for row in 0..<groundTileMapNode.numberOfRows {
                //do something
                let tileBoolData = groundTileMapNode.tileDefinition(atColumn: col, row: row)?.userData?["isCenter"] as? Bool
                
                if (tileBoolData == true){
                    print("grass pathfound: ", col, row)
                }
            }
        }
        
        
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
        let column = groundTileMapNode.tileColumnIndex(fromPosition: pos)
        let row = groundTileMapNode.tileRowIndex(fromPosition: pos)

        if let tile:SKTileDefinition = groundTileMapNode.tileDefinition(atColumn: column, row: row){
            if let tileBoolData = tile.userData?.value(forKey: "isCenter")as? Bool{
                print("you found a center ground tile")
            }
        }
        
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
