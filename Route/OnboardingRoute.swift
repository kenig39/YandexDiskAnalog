//
//  OnboardingRoute.swift
//  SkillBoxDisk
//
//  Created by Alexander on 03.06.2024.
//

import UIKit

protocol OnboardingRoute {
    func makePage() -> UIPageViewController
}

extension OnboardingRoute where Self: Router {
    func makePage() -> UIPageViewController {
        let router = DefaultRouter(rootTransition: EmptyTransition())
        let viewModel = OnboardingModel(router: router)
        let viewController = OnboadrdingPages(viewModel: viewModel as! PageViewModelProtocol)
        router.root = viewController
        return viewController
    }
}

extension DefaultRouter: OnboardingRoute {}



