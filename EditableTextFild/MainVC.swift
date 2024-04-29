//  MainVC.swift
//  EditableTextFild
//  Created by MuhammadAli on 07/02/24.


import UIKit

class MainVC: UIViewController, Mprotocol {
    
    var tableView: UITableView!
    
    var viewModel: ViewModelForCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = ViewModelForCell(self)
        self.view.backgroundColor = .white
        initView()
    }
    
    private func initView() {
        
        self.tableView = UITableView(frame: CGRect(x: 0, y: 0, width: windowWidth, height: windowHeight))
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = .white
        self.view.addSubview(tableView)
    }
}
