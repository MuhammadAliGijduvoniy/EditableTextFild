//
//  String+Extension.swift
//  EditableTextFild
//
//  Created by MuhammadAli on 08/02/24.
//

import UIKit

extension String {
    
    mutating func phoneNumberSpace() -> String {
        
        if self.count >= 18 {
            self.removeLast()
        }
        
        switch self.count {
        case 4,7,11,14: return self.appending("-")
        default : break
            
        }
        return self
    }
    
    
    mutating func cardNumberSpace() -> String {
        
        for i in self.lowercased() {
            if i >= "a" && i <= "z" {
                self.removeAll { el in
                    return i == el
                }
            }
        }
        
        if self.count >= 20 {
            self.removeLast()
        }
        
        switch self.count {
        case 4: return self.appending(" ")
        case 9: return self.appending(" ")
        case 14: return self.appending(" ")
        default : break
        }
        return self
    }
    
    mutating func cardExpireNumber() -> String {
        
        
        for i in self.lowercased() {
            if i >= "a" && i <= "z" {
                self.removeAll { el in
                    return i == el
                }
            }
        }
        
        if self.count > 5 {
            self.removeLast()
        }
        
        switch self.count {
        case 2: return self.appending("/")
        default: break
        }
        
        return self
    }
    
    mutating func passportData() -> String {
        
        var newText = self
        
        if newText.count >= 10 {
            newText.removeLast()
            
        }
        
        switch newText.count {
        case 1,2:
            for j in newText {
                if j >= "0" && j <= "9" {
                    newText.removeAll { el in
                        return j == el
                    }
                }
            }
            
        case 3,4,5,6,7,8,9:
            for j in newText.lowercased() {
                if j >= "a" && j <= "z" {
                    newText.removeAll { el in
                        return j == el
                    }
                }
            }
        default:
            break
        }
        
        return newText.uppercased()

    }
}

