//
//  TableView+Delegate.swift
//  EditableTextFild
//
//  Created by MuhammadAli on 07/02/24.
//

import Foundation
import UIKit


extension MainVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return static_height_for_cell
    }
    
}
