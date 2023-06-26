//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 26.06.2023.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
