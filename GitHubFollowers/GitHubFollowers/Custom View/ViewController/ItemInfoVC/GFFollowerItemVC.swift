//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 27.06.2023.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
}

private extension GFFollowerItemVC {
    
    func configureItems() {
        itemInfoViewOne.set(.followers, with: user.followers)
        itemInfoViewTwo.set(.following, with: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
