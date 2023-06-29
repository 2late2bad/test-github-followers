//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 29.06.2023.
//

import UIKit

extension UIView {
    
    func pinToEdges(of superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }
    
    func addSubviews(_ views: UIView...) { views.forEach { addSubview($0) } }
}
