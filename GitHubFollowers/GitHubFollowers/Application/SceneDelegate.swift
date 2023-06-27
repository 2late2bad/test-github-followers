//
//  SceneDelegate.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 23.06.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene        = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
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
    
    func createTabBar() -> UITabBarController {
        let tabBar                      = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        
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
        
        tabBar.viewControllers          = [createSearchNC(), createFavoritesNC()]
        return tabBar
    }
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
}
