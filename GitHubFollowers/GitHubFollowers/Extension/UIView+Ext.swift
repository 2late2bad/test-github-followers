//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 29.06.2023.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) { views.forEach { addSubview($0) } }
}
