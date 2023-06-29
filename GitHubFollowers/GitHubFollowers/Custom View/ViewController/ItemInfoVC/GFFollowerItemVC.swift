//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 27.06.2023.
//

import UIKit

protocol GFFollowerItemVCDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

final class GFFollowerItemVC: GFItemInfoVC {
    
    weak var delegate: GFFollowerItemVCDelegate!
    
    
    init(user: User, delegate: GFFollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}

private extension GFFollowerItemVC {
    
    func configureItems() {
        itemInfoViewOne.set(.followers, with: user.followers)
        itemInfoViewTwo.set(.following, with: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
