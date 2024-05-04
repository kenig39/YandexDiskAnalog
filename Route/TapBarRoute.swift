//
//  TapbarRoute.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

protocol TabBarInsets {

func showTabBar() -> UITabBarController
 }

extension TabBarInsets where Self: Router {

    func showTabBar() -> UITabBarController {
        let router = DefaultRouter(rootTransition: ModalTransition() )
        let viewModel = TabBarModel(router: router)
        let tabBar = TabBarController(viewModel: viewModel)
        tabBar.tabBar.unselectedItemTintColor = UIColor.blue
        let tabs = [router.aboutPersonPage(), router.lastFileInserts(), router.openAllFiles()]
        tabBar.viewControllers = tabs
        return tabBar
       
    }

    func showTabBar(){
        root?.tabBarController?.selectedIndex = 0
    }
}

extension DefaultRouter: TabBarInsets {}
