//
//  LastUploadsRoute.swift
//  SkillBoxDisk
//
//  Created by Alex on 08.09.2023.
//

import UIKit

protocol LastUploadRoute{
    func  lastUploads()
}

extension LastUploadRoute where Self: Router {
    func lastUploads(with transition: Transition) {
        let router = DefaultRouter(rootTransition: transition)
        let viewModel = LastUploadsModel(router: router)
        let viewController = LastUploadsViewController(viewModel: viewModel)
        router.root = viewController
        let navigation = UINavigationController(rootViewController: viewController)
        
        
        route(to: navigation, as: transition)
    }
    
    func lastUploads(){
        lastUploads(with: AnimatedTransition(animatedTransition: FadeAnimatedTransitioning()))
    }
}

extension DefaultRouter: LastUploadRoute{}
