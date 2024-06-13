//
//  CoreViewFiles.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

class CoreViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidLayoutSubviews() {
        firstScrenFunc()
    }
    
    func firstScrenFunc() {
        var VC = UIViewController()
        let router = DefaultRouter(rootTransition: EmptyTransition())
        if Coredata.shared.isNewUser() == true {
            VC = router.onboardingPage()
            VC.modalPresentationStyle = .fullScreen
            present(VC, animated: true)
        } else if Coredata.shared.loginedUser() == false {
            VC = router.showTabBar()
        }
    }
}

class Coredata {
    static let shared = Coredata()
    
    func isNewUser() -> Bool {
        return !UserDefaults.standard.bool(forKey: "newUser")
    }
    
    func loginedUser() -> Bool {
      return  UserDefaults.standard.bool(forKey: "userIsLogged")
    }
}



