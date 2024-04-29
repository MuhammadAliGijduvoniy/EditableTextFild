//
//  Utilis.swift
//  EditableTextFild
//
//  Created by MuhammadAli on 08/02/24.
//

import Foundation

extension Array where Element == Model {
    
    mutating func update(with item: Model) {
        for i in 0 ..< self.count {
           if self[i].id == item.id {
               self[i] = item
               break
            }
        }
    }
    
}
