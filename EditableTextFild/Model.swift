//
//  ViewModel_ForCell.swift
//  EditableTextFild
//
//  Created by MuhammadAli on 07/02/24.
//

import Foundation


struct Model {
    
    var onTextChange : ((String) -> Void)?
    
    var id : Int = 1
    var key : String = ""
    var type : EveryCellType = .text
    var limit: Int? = 25
    var amountLimit : Int?
    var placeHolder: String = "Type ..."
    
    var needChack: Bool = false
    
    private var inputText: String?
    
    var input: String? { 
        get {
            return self.inputText
        }
        set {
            self.inputText = self.farmatCardNumber(newValue ?? "")
            self.needChack = (newValue?.count ?? 0) == 9
            self.onTextChange?(inputText ?? "")
        }
    }
    
    
    // farmatlash
    func farmatCardNumber(_ text: String) -> String {
        var newText = text
        
        switch type {
        case .text:
            return newText
        case .birthDay:
            return newText
        case .cardNumber:
            return newText.cardNumberSpace()
        case .cardExpire:
            return newText.cardExpireNumber()
        case .phoneNumber:
            return newText.phoneNumberSpace()
        case .passportData:
            return newText.passportData()
        case .amount:
            return newText
        }
    }


    init(type: EveryCellType, placeholde: String = "Type ...", limit: Int? = nil, amountLimit: Int? = nil) {
        self.type = type
        self.limit = limit
        self.amountLimit = amountLimit
        self.id = SharedManager.shared.getNextId()
        self.placeHolder = placeholde
    }
}








