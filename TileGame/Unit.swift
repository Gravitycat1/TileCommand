//
//  Unit.swift
//  TileGame
//
//  Created by Isaacs Joshua on 4/9/18.
//  Copyright © 2018 Isaacs Joshua. All rights reserved.
//

import Foundation
import SpriteKit



class Unit: GameObject{
    
    enum State{
        case ACTIVE
        case MOVED
        case USED
        case DEAD
    }
    var team: Int?
    var moveRange: Int?
    var attackRange: Int?
    var selectable: Bool?
    var UnitState :State
    
    
    override init(imageNamed: String){
        
        let tex = SKTexture(imageNamed: imageNamed)
    UnitState = State.ACTIVE
        
        super.init(imageNamed: imageNamed)
    }
    
    override func update(_ deltaTime: TimeInterval ){
        switch UnitState {
        case .ACTIVE:
            Activate()
        case .MOVED:
            Move()
        case .USED:
            Rest()
        case .DEAD:
            Die()
        default:
            print("HAHAHAH IT BROKE")
        
        }
    }
    func Reset (){
        UnitState = State.ACTIVE
        selectable = true
    }
    func Activate(){
        //active the unit
    }
    
    func Move(){}
    func Rest(){}
    func Die(){
        delete(self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
