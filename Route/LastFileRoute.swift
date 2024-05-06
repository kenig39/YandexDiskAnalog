//
//  LastFileRoute.swift
//  SkillBoxDisk
//
//  Created by Alex on 05.09.2023.
//

import UIKit

protocol LastFileRoute{
    func lastFileInserts() -> UIViewController
}

extension LastFileRoute where Self: Router {
    func lastFileInserts() -> UIViewController{
        let router = DefaultRouter(rootTransition: EmptyTransition())
        let viewModel = LastFilesModel(router: router)
        let viewController = LastFilesViewController(viewModel: viewModel)
        router.root = viewController
        
        let navigation = UINavigationController(rootViewController: viewController)
        viewController.navigationItem.prompt = "Последние файлы".localizedText()
        navigation.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "file"), tag: 0)
        return navigation
    }
    
    func lastFileInserts(){
        root?.tabBarController?.selectedIndex = 0
    }
}

extension DefaultRouter: LastFileRoute{}
