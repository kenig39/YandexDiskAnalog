//
//  SceneDelegate.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit
import YandexLoginSDK

class CustonNavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

extension UINavigationController {
    open override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
           let appearance = UINavigationBarAppearance()
           appearance.configureWithOpaqueBackground()
           appearance.backgroundColor = .blue
           
           UINavigationBar.appearance().tintColor = .white
           UINavigationBar.appearance().scrollEdgeAppearance = appearance

           UINavigationBar.appearance().prefersLargeTitles = true
           
           appearance.titleTextAttributes =
           [.foregroundColor: UIColor.white]
       
           appearance.largeTitleTextAttributes =
           [.foregroundColor: UIColor.white]
           
        guard let scene = (scene as? UIWindowScene) else {return}
        window = UIWindow(windowScene: scene)
        let vc = LogoTypeViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        window?.backgroundColor = UIColor.white
    }
    
   
    func sceneDidDisconnect(_ scene: UIScene) {
      
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    
    }

    func sceneWillResignActive(_ scene: UIScene) {
     
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
      
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

