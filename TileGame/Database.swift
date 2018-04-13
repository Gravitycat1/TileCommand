//
//  Database.swift
//  TileGame
//
//  Created by Isaacs Joshua on 4/12/18.
//  Copyright © 2018 Isaacs Joshua. All rights reserved.
//

import Foundation
import FirebaseDatabase


typealias DBResult = ([AnyHashable: Any] ) -> Void
class DataStuff {
    let dataBase: DatabaseReference
    
    init() {
        dataBase = Database.database().reference()
    }
    
    func requestStats (for id:String, completion: @escaping DBResult){

        dataBase.child("Units").observe(DataEventType.value) { (snapshot) in
            print(snapshot.description)
            guard let dictionary = snapshot.value as? NSDictionary, let result = dictionary[id] as? [AnyHashable: Any] else {
                return
            }
            completion(result)
        }
    }
}
