//
//  LoginRoute.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

protocol LoginRoute {
    func openLogin()
}

extension LoginRoute where Self: Router {
    func openLogin(transition: Transition) {
        let router = DefaultRouter(rootTransition: EmptyTransition())
        let viewModel = LoginModel(router: router)
        let viewController = LoginViewController(viewModel: viewModel)
        router.root = viewController

        let navigation = UINavigationController(rootViewController: viewController)
        navigation.tabBarItem = TabsView.allfiles.item
      return navigation
    }


}

extension DefaultRouter: LoginRoute {
    func openLogin() {
        root?.tabBarController?.selectedIndex = TabsView.allfiles.index

    }
}

