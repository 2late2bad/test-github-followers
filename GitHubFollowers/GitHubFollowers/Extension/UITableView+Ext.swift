//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 29.06.2023.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
