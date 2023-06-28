//
//  GFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 27.06.2023.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}

private extension GFRepoItemVC {
    
    func configureItems() {
        itemInfoViewOne.set(.repos, with: user.publicRepos)
        itemInfoViewTwo.set(.gists, with: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}
