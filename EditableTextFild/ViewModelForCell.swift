//
//  ViewModelForCell.swift
//  EditableTextFild
//
//  Created by MuhammadAli on 07/02/24.
//

import UIKit

class ViewModelForCell {
    
    var delegate : Mprotocol?
    
    
    private var dataList = [Model]()
    
    init(_ delegate: Mprotocol) {
        self.delegate = delegate
        self.initData()
    }
    
    func initData() {
        self.dataList = [
            Model(type: .text, placeholde: "Ismizni kiriting"),
            Model(type: .text, placeholde: "Familiyangizni kiriting"),
            Model(type: .cardNumber, placeholde: "8600 0000 0000 0000"),
            Model(type: .phoneNumber, placeholde: "+998 91 444 00 43"),
            Model(type: .cardExpire, placeholde: "dd/mm"),
            Model(type: .amount, placeholde: "Summa"),
            Model(type: .passportData, placeholde: "PassportDate")
//            Model(type: .text, placeholde: "Ismizni kiriting"),
//            Model(type: .text, placeholde: "Familiyangizni kiriting"),
//            Model(type: .cardNumber, placeholde: "8600 0000 0000 0000"),
//            Model(type: .cardExpire, placeholde: "dd/mm"),
//            Model(type: .amount, placeholde: "Summa"),
//            Model(type: .text, placeholde: "Ismizni kiriting"),
//            Model(type: .text, placeholde: "Familiyangizni kiriting"),
//            Model(type: .cardNumber, placeholde: "8600 0000 0000 0000"),
//            Model(type: .cardExpire, placeholde: "dd/mm"),
//            Model(type: .amount, placeholde: "Summa"),
//            Model(type: .text, placeholde: "Ismizni kiriting"),
//            Model(type: .text, placeholde: "Familiyangizni kiriting"),
//            Model(type: .cardNumber, placeholde: "8600 0000 0000 0000"),
//            Model(type: .cardExpire, placeholde: "dd/mm"),
//            Model(type: .amount, placeholde: "Summa"),
        ]
    }
    
    // har bitta cellni data sini beradi qandayki ArrayModeldan bittalab olib beradi
    func model(forCell atIndex: IndexPath) -> Model {
        return self.dataList[atIndex.row]
    }
    
    func model(_ item : Model) {
        self.dataList.update(with: item)
        if item.needChack {
            
        }
    }
    
    func numberOfRows() -> Int {
        return dataList.count
    }
    
}
