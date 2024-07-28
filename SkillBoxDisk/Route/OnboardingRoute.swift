//
//  OnboardingRoute.swift
//  SkillBoxDisk
//
//  Created by Alexander on 03.06.2024.
//

import UIKit

protocol OnboardingRoute {
    func onboardingPage() -> UIPageViewController
}

extension OnboardingRoute where Self: Router {
    func onboardingPage() -> UIPageViewController {
        let router = DefaultRouter(rootTransition: EmptyTransition())
        let viewModel = OnboardingModel(router: router)
        let viewController = OnboadrdingPages(viewModel: viewModel)
        router.root = viewController
        return viewController
    }
}

extension DefaultRouter: OnboardingRoute {}



