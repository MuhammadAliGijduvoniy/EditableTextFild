//
//  TableViewCell.swift
//  EditableTextFild
//
//  Created by MuhammadAli on 07/02/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var ontext: ((Model) -> Void)?
    
    var textFild = UITextField()
    
    private var model: Model!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(_ model: Model) {
        super.init(style: .default, reuseIdentifier: "TableViewCell")
        self.model = model
        self.model.onTextChange = { newText in
            self.textFild.text = newText
        }
        self.selectionStyle = .none
        initView()
    }
    
    func initView() {
        
        let container = UIView(frame: CGRect(x: 16, y: 5, width: windowWidth - 32, height: static_height_for_cell - 10))
        container.backgroundColor = .white
        container.layer.cornerRadius = (static_height_for_cell - 10) / 2
        container.layer.borderWidth = 0.9
        container.layer.borderColor = UIColor.black.cgColor
        container.layer.shadowRadius = 12
        container.layer.shadowOpacity = 0.2
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOffset = .init(width: 0, height: 0)
        self.contentView.addSubview(container)
        
        
        textFild.frame = CGRect(x: 16, y: 0, width: container.frame.width - 32, height: container.frame.height)
        textFild.placeholder = self.model.placeHolder
        textFild.font = .systemFont(ofSize: 18)
        textFild.text = self.model.input
        textFild.textColor = .black
        textFild.addTarget(self, action: #selector(onTextFild(_:)), for: .editingChanged)
        container.addSubview(textFild)
    }
    
    
    @objc func onTextFild(_ textFild: UITextField) {
        self.model.input = textFild.text
        self.ontext?(self.model)
    }
}
