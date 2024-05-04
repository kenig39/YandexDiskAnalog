//
//  AboutPersonRoute.swift
//  SkillBoxDisk
//
//  Created by Alex on 05.09.2023.
//

import UIKit

protocol AboutePersonRoute {
    func aboutPersonPage() -> UIViewController
}

extension AboutePersonRoute where Self: Router {
    func aboutPersonPage() -> UIViewController {
        let router = DefaultRouter(rootTransition: EmptyTransition())
        let viewModel = AboutPersonModel(router: router)
        let viewController = AboutPersonViewController(viewModel: viewModel)
        router.root = viewController
        
        let navigation = UINavigationController(rootViewController: viewController)
        viewController.navigationItem.title = "Профиль".localizedText()
        navigation.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "person")?.withTintColor(.red), tag: 0)
        return navigation
    }
    
    func aboutPerson(){
        root?.tabBarController?.selectedIndex = 1
    }
}

extension DefaultRouter: AboutePersonRoute{ }



  
    


