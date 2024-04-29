//
//  TableView+Datasource.swift
//  EditableTextFild
//
//  Created by MuhammadAli on 07/02/24.
//

import UIKit


extension MainVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = TableViewCell(self.viewModel.model(forCell: indexPath))
        cell.ontext = { data in
            self.viewModel.model(data)
        }
        return cell
        
    }
}
