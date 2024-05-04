//
//  AllFilesRoute.swift
//  SkillBoxDisk
//
//  Created by Alex on 05.09.2023.
//

import UIKit


protocol AllFilesRoute {
    func openAllFiles() -> UIViewController
}

extension AllFilesRoute where Self: Router{
    func  openAllFiles() -> UIViewController{
        let router = DefaultRouter(rootTransition: EmptyTransition())
        let viewModel = AllFilesViewModel(router: router)
        let viewController = AllFilesViewController(viewModel: viewModel)
        router.root = viewController
        
        let navigation = UINavigationController(rootViewController: viewController)
        viewController.navigationItem.title = "Все файлы".localizedText()
        navigation.tabBarItem = UITabBarItem(title: nil, image:UIImage(named: "allFiles") , tag: 0)
        return navigation
    }
    
        func openAllFiles(){
            root?.tabBarController?.selectedIndex = 2
        }
    }

    extension DefaultRouter: AllFilesRoute{}
