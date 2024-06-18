//
//  OnboardingModel.swift
//  SkillBoxDisk
//
//  Created by Alexander on 03.06.2024.
//

import Foundation


final class OnboardingModel {
    typealias Routes = Closable
    let router: Routes
    
    init(router: Routes){
        self.router = router
    }
    
//    func openLogin(){
//        router.openLogin()
//    }
}
