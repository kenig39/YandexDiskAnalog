//
//  NameFileRouter.swift
//  SkillBoxDisk
//
//  Created by Alexander on 12.06.2024.
//

import Foundation
import UIKit

protocol NameFilesRoute{
    func nameFiles()
}

extension NameFilesRoute where Self:Router {
    func nameFiles(with transition: Transition){
        let router = DefaultRouter(rootTransition: transition)
        let viewModel = NamedFilesModel(router: router)
        let viewController = NamedFilesViewController(viewModel: viewModel)
        let navigation = UINavigationController(rootViewController: viewController)
        router.root = viewController
        
        route(to: navigation, as: transition)
    }
    
    func nameFiles(){
        nameFiles(with: AnimatedTransition(animatedTransition: FadeAnimatedTransitioning()))
    }
}

extension DefaultRouter: NameFilesRoute{
   
}
