//
//  SharedManager.swift
//  EditableTextFild
//
//  Created by MuhammadAli on 07/02/24.
//

import UIKit


class SharedManager {
 
   static let shared : SharedManager = SharedManager()
    
    private var localPreference = UserDefaults.standard
    
    func getNextId() -> Int {
        let current = localPreference.integer(forKey: "sharedKey")
        localPreference.setValue(current + 1, forKey: "sharedKey")
        return (current + 1)
    }
}
