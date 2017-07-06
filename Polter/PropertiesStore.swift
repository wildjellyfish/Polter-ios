//
//  PropertiesStore.swift
//  Polter
//
//  Created by maverick on 7/6/17.
//  Copyright © 2017 christyan. All rights reserved.
//

import Foundation
import CoreData

class PropertiesStore {
    let properties = UserDefaults.standard
    
    
    var userId: Int {
        get {
            return properties.integer(forKey: "userId")
        }
        set(newuserId) {
            properties.set(newuserId, forKey: "userId")
        }
    }
    
    var recordId: Int {
        get {
            return properties.integer(forKey: "recordId")
        }
        set(newrecordId) {
            properties.set(newrecordId, forKey: "recordId")
        }
    }
    
}
