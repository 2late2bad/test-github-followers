//
//  GFTabBarController.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 28.06.2023.
//

import UIKit

final class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers                 = [createSearchNC(), createFavoritesNC()]
    }
    
    func createSearchNC() -> UINavigationController {
        let searchVC        = SearchVC()
        searchVC.title      = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesVC        = FavoritesListVC()
        favoritesVC.title      = "Favorites"
        favoritesVC.tabBarItem = .init(tabBarSystemItem: .favorites, tag: 1)

        return UINavigationController(rootViewController: favoritesVC)
    }
}

//        if #available(iOS 13.0, *) {
//            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
//            tabBarAppearance.configureWithDefaultBackground()
//            tabBarAppearance.backgroundColor = .systemBackground
//            UITabBar.appearance().standardAppearance = tabBarAppearance
//
//            if #available(iOS 15.0, *) {
//                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
//            }
//        }
