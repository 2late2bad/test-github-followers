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
        
        window                     = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene        = windowScene
        window?.rootViewController = GFTabBarController()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
    }
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
}
